
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  reel-state $ unsafe-coerce reel 'reel.core/ReelState
                  store $ unsafe-coerce
                    &map:get (unsafe-coerce reel-state 'Map) :store
                    :: 'Map
                  states $ unsafe-coerce (&map:get store :states) 'Map
                  drafts $ unsafe-coerce (&map:get store :drafts) 'Map
                  pointer $ &map:get store :pointer
                  mono? $ option:unwrap-or
                    get-in store $ [] :drafts pointer :mono?
                    , false
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/row)
                  div
                    {} $ :class-name style-side-container
                    list->
                      {} $ :style
                        {} $ :height
                          + 120 $ * 32 (count drafts)
                      -> drafts (.to-list) (.map last)
                        .sort-by $ fn (draft)
                          let
                              draft-map $ unsafe-coerce draft 'Map
                            negate $ if
                              blank? $ unsafe-coerce (&map:get draft-map :text) 'String
                              , js/Number.MAX_VALUE
                                unsafe-coerce (&map:get draft-map :touch-id) 'Number
                        map-indexed $ fn (idx draft)
                          let
                              draft-map $ unsafe-coerce draft 'Map
                            [] (&map:get draft-map :id) (comp-title draft idx pointer)
                        .sort-by first
                  textarea $ {}
                    :value $ option:unwrap-or
                      get-in drafts $ [] pointer :text
                      , |
                    :spellcheck $ not mono?
                    :style $ merge
                      if mono?
                        {} (:font-family ui/font-code) (:font-size 14)
                        {}
                    :class-name $ str-spaced css/flex css/textarea |text style-textbox
                    :placeholder |new...
                    :on-input $ fn (e d!)
                      d! :text $ &map:get (unsafe-coerce e 'Map) :value
                  comp-mono mono?
                  comp-reel (>> states :reel) reel $ {}
                  ; comp-inspect |draft
                    get-in store $ [] :drafts pointer
                    {} (:position :absolute) (:bottom 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-mono $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-mono (mono?)
              span
                {}
                  :class-name $ str-spaced css/font-code style-mono-mark
                  :style $ {}
                    :color $ if mono? (hsl 0 0 40) (hsl 0 0 90)
                  :on-click $ fn (e d!) (d! :mono nil)
                <> |Mono
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-title (draft idx pointer)
              let
                  draft-map $ unsafe-coerce draft 'Map
                  draft-id $ &map:get draft-map :id
                  text $ unsafe-coerce (&map:get draft-map :text) (:: 'String)
                div
                  {} (:class-name style-title)
                    :style $ if (= pointer draft-id)
                      {}
                        :background-color $ hsl 0 0 100 0.2
                        :top $ + 16 (* idx 32)
                      {} $ :top
                        + 16 $ * idx 32
                    :on-click $ fn (e d!) (d! :pointer draft-id) (focus-text!)
                  if (blank? text)
                    <> |new... $ {}
                      :color $ hsl 0 0 100 0.3
                    let
                        title $ option:unwrap-or
                          first $ split-lines text
                          , |
                      if (blank? title)
                        <> |<private> $ {}
                          :color $ hsl 0 0 80 0.5
                          :font-style :italic
                        <> title $ {} (:color :white)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-mono-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-mono-mark $ {}
              |& $ {} (:position :absolute) (:right 8) (:bottom 8) (:cursor :pointer)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-side-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-side-container $ {}
              |& $ {} (:width 240)
                :background-color $ hsl 170 35 24
                :position :relative
                :color :white
                :overflow :auto
          :examples $ []
          :schema $ :: 'Dynamic
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox $ {}
              |& $ {} (:border :none) (:line-height |1.6em) (:font-size 16) (:outline :none) (:background-color :white) (:resize :none) (:padding "|16px 8px") (:padding-bottom 400)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-title $ {}
              |& $ {} (:padding "|0 8px") (:line-height |32px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:cursor :pointer) (:transition-duration |300ms) (:transition-property |top) (:position :absolute) (:width |100%)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div button textarea span
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo.util.list :refer $ map-val
            clojure.string :as string
            respo.comp.inspect :refer $ comp-inspect
            app.util :refer $ focus-text!
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key |manuscript)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not=
                  option:unwrap-or (nth op 0) :unknown
                  , :states
                println |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              .!addEventListener (unsafe-coerce js/window 'JsObject) |beforeunload $ fn (event) (persist-storage!)
              repeat! 60 persist-storage!
              let
                  raw $ .!getItem (unsafe-coerce js/localStorage 'JsObject) (:storage-key config/site)
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw 'String
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ .!setItem (unsafe-coerce js/localStorage 'JsObject) (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.util :refer $ focus-text!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def config $ {} (:storage-key |manuscript)
          :examples $ []
          :schema $ :: 'Dynamic
        'draft $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def draft $ {} (:id nil) (:text |) (:touch-id nil) (:mono? false)
          :examples $ []
          :schema $ :: 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :drafts $ let
                  zero |zero
                {} $ zero
                  merge draft $ {} (:id zero) (:touch-id zero)
              :pointer |zero
              :version nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              let
                  store-map $ unsafe-coerce store 'Map
                  pointer $ &map:get store-map :pointer
                match op
                  (:states cursor s) (update-states store cursor s)
                  (:text op-data)
                    -> store
                      assoc-in ([] :drafts pointer :text) op-data
                      assoc-in ([] :drafts pointer :touch-id) op-time
                      update :drafts $ fn (drafts)
                        let
                            empty-drafts $ -> drafts (to-pairs) (.map last)
                              filter $ fn (draft)
                                blank? $ unsafe-coerce
                                  &map:get (unsafe-coerce draft 'Map) :text
                                  :: 'String
                          cond
                              = 1 $ count empty-drafts
                              , drafts
                            (empty? empty-drafts)
                              assoc drafts op-id $ merge schema/draft
                                {} (:id op-id) (:touch-id op-time)
                            true $ let
                                empty-ids $ ->
                                  map empty-drafts $ fn (x)
                                    &map:get (unsafe-coerce x 'Map) :id
                                  filter $ fn (x) (not= x pointer)
                              dissoc drafts & empty-ids
                  (:pointer op-data) (assoc store :pointer op-data)
                  (:hydrate-storage op-data) op-data
                  (:mono)
                    update-in store
                      [] :drafts (&map:get store-map :pointer) :mono?
                      , not
                  _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
            app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'focus-text! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn focus-text! () $ js/requestAnimationFrame
              fn (t)
                let
                    element $ js/document.querySelector |.text
                  when (js-present? element)
                    .!focus $ unsafe-coerce element 'JsObject
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.util)
