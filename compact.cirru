
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  drafts $ :drafts store
                  pointer $ :pointer store
                  mono? $ get-in store ([] :drafts pointer :mono?)
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/row)
                  div
                    {} $ :style
                      {} (:width 240)
                        :background-color $ hsl 170 35 24
                        :position :relative
                        :color :white
                        :overflow :auto
                    list->
                      {} $ :style
                        {} $ :height
                          + 120 $ * 32 (count drafts)
                      -> drafts (.to-list) (.map last)
                        .sort-by $ fn (draft)
                          negate $ if
                            .blank? $ :text draft
                            , js/Number.MAX_VALUE (:touch-id draft)
                        map-indexed $ fn (idx draft)
                          [] (:id draft) (comp-title draft idx pointer)
                        .sort-by first
                  textarea $ {}
                    :value $ :text (get drafts pointer)
                    :spellcheck $ not mono?
                    :style $ merge ui/flex ui/textarea
                      {} (:border :none) (:line-height |1.6em) (:font-size 16) (:outline :none) (:background-color :white) (:resize :none) (:padding "|16px 8px") (:padding-bottom 400)
                      if mono? $ {} (:font-family ui/font-code) (:font-size 14)
                    :class-name |text
                    :placeholder |new...
                    :on-input $ fn (e d!)
                      d! :text $ :value e
                  comp-mono mono?
                  comp-reel (>> states :reel) reel $ {}
                  ; comp-inspect |draft
                    get-in store $ [] :drafts pointer
                    {} (:position :absolute) (:bottom 0)
        |comp-mono $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-mono (mono?)
              span
                {}
                  :style $ {} (:font-family ui/font-code) (:position :absolute) (:right 8) (:bottom 8)
                    :color $ if mono? (hsl 0 0 40) (hsl 0 0 90)
                    :cursor :pointer
                  :on-click $ fn (e d!) (d! :mono nil)
                <> |Mono
        |comp-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-title (draft idx pointer)
              div
                {}
                  :style $ merge
                    {} (:padding "|0 8px") (:line-height |32px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:cursor :pointer)
                      :top $ + 16 (* idx 32)
                      :transition-duration |300ms
                      :transition-property |top
                      :position :absolute
                      :width |100%
                    if
                      = pointer $ :id draft
                      {} $ :background-color (hsl 0 0 100 0.2)
                  :on-click $ fn (e d!)
                    d! :pointer $ :id draft
                    focus-text!
                let
                    text $ :text draft
                  if (.blank? text)
                    <> |new... $ {}
                      :color $ hsl 0 0 100 0.3
                    let
                        title $ first (.split-lines text)
                      if (.blank? title)
                        <> |<private> $ {}
                          :color $ hsl 0 0 80 0.5
                          :font-style :italic
                        <> title $ {} (:color :white)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> list-> <> div button textarea span
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo.util.list :refer $ [] map-val
            [] clojure.string :as string
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] app.util :refer $ [] focus-text!
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"manuscript")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                println "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
              repeat! 60 persist-storage!
              let
                  raw $ .!getItem js/localStorage (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            [] respo.core :refer $ [] render! clear-cache!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] app.util :refer $ [] focus-text!
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |config $ %{} :CodeEntry (:doc |)
          :code $ quote
            def config $ {} (:storage-key |manuscript)
        |draft $ %{} :CodeEntry (:doc |)
          :code $ quote
            def draft $ {} (:id nil) (:text |) (:touch-id nil) (:mono? false)
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :drafts $ let
                  zero |zero
                {} $ zero
                  merge draft $ {} (:id zero) (:touch-id zero)
              :pointer |zero
              :version nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              let
                  pointer $ :pointer store
                tag-match op
                    :states cursor s
                    update-states store cursor s
                  (:text op-data)
                    -> store
                      assoc-in ([] :drafts pointer :text) op-data
                      assoc-in ([] :drafts pointer :touch-id) op-time
                      update :drafts $ fn (drafts)
                        let
                            empty-drafts $ -> drafts (.to-list) (.map last)
                              filter $ fn (draft)
                                .blank? $ :text draft
                          cond
                              = 1 $ count empty-drafts
                              , drafts
                            (empty? empty-drafts)
                              assoc drafts op-id $ merge schema/draft
                                {} (:id op-id) (:touch-id op-time)
                            true $ let
                                empty-ids $ ->
                                  map empty-drafts $ fn (x) (:id x)
                                  filter $ fn (x) (not= x pointer)
                              dissoc drafts & empty-ids
                  (:pointer op-data) (assoc store :pointer op-data)
                  (:hydrate-storage op-data) op-data
                  (:mono)
                    update-in store
                      [] :drafts (:pointer store) :mono?
                      , not
                  _ $ do (eprintln "|Unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
            [] app.schema :as schema
    |app.util $ %{} :FileEntry
      :defs $ {}
        |focus-text! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn focus-text! () $ js/requestAnimationFrame
              fn (t)
                let
                    element $ js/document.querySelector |.text
                  .!focus element
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.util)
