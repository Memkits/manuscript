
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
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
      :defs $ {}
        |comp-container $ quote
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
        |comp-mono $ quote
          defcomp comp-mono (mono?)
            span
              {}
                :style $ {} (:font-family ui/font-code) (:position :absolute) (:right 8) (:bottom 8)
                  :color $ if mono? (hsl 0 0 40) (hsl 0 0 90)
                  :cursor :pointer
                :on-click $ fn (e d!) (d! :mono nil)
              <> |Mono
        |comp-title $ quote
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
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |draft $ quote
          def draft $ {} (:id nil) (:text |) (:touch-id nil) (:mono? false)
        |store $ quote
          def store $ {}
            :states $ {}
            :drafts $ let
                zero |zero
              {} $ zero
                merge draft $ {} (:id zero) (:touch-id zero)
            :pointer |zero
            :version nil
        |config $ quote
          def config $ {} (:storage-key |manuscript)
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
          [] app.schema :as schema
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            let
                pointer $ :pointer store
              case-default op
                do (println "|Unknown op:" op) store
                :states $ update-states store op-data
                :text $ -> store
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
                :pointer $ assoc store :pointer op-data
                :hydrate-storage op-data
                :mono $ update-in store
                  [] :drafts (:pointer store) :mono?
                  , not
    |app.main $ {}
      :ns $ quote
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
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () $ ;nil
            .!setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ js/document.querySelector |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
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
                dispatch! :hydrate-storage $ w-log (parse-cirru-edn raw)
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |app.util $ {}
      :ns $ quote (ns app.util)
      :defs $ {}
        |focus-text! $ quote
          defn focus-text! () $ js/requestAnimationFrame
            fn (t)
              let
                  element $ js/document.querySelector |.text
                .!focus element
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"manuscript")
