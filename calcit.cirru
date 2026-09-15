
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ decode-map-as (&map:get reel :store) app.schema/Store
                states store.:states
                drafts store.:drafts
                pointer store.:pointer
                mono? $ match (get drafts pointer)
                  (:some draft) draft.:mono?
                  (:none) false
              div
                {} $ :class-name $ str-spaced css/global css/fullscreen css/row
                div
                  {} $ :class-name style-side-container
                  list->
                    {} $ :style $ {}
                      :height $ + 120 $ * 32 (count drafts)
                    -> drafts vals (&set:to-list)
                      sort $ fn (a b)
                        -
                          if (blank? b.:text) js/Number.MAX_VALUE b.:touch-id
                          if (blank? a.:text) js/Number.MAX_VALUE a.:touch-id
                      map-indexed $ fn (idx draft)
                        [] draft.:id $ comp-title draft idx pointer
                textarea $ {}
                  :value $ match (get drafts pointer)
                    (:some draft) draft.:text
                    (:none) |
                  :spellcheck $ not mono?
                  :style $ merge $ if mono?
                    {} (:font-family ui/font-code) (:font-size 14)
                    {}
                  :class-name $ str-spaced css/flex css/textarea |text style-textbox
                  :placeholder |new...
                  :on-input $ fn (event dispatch!)
                    dispatch! $ app.schema/Op :text $ event-value
                      assert-type event $ :: 'Map 'Tag 'Dynamic
                comp-mono mono?
                comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Reel
            :features $ #{} :js-ffi
        'comp-mono $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-mono (mono?)
            span
              {}
                :class-name $ str-spaced css/font-code style-mono-mark
                :style $ {} $ :color
                  if mono? (hsl 0 0 40) (hsl 0 0 90)
                :on-click $ fn (event dispatch!)
                  dispatch! $ app.schema/Op :mono
              <> |Mono
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool
        'comp-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-title (draft idx pointer)
            let
                draft-id draft.:id
                text draft.:text
              div
                {} (:class-name style-title)
                  :style $ if (= pointer draft-id)
                    {}
                      :background-color $ hsl 0 0 100 $ :: :some 0.2
                      :top $ + 16 $ * idx 32
                    {} $ :top $ + 16 (* idx 32)
                  :on-click $ fn (event dispatch!)
                    dispatch! $ app.schema/Op :pointer draft-id
                    focus-text!
                if (blank? text)
                  <> |new... $ {} $ :color
                    hsl 0 0 100 $ :: :some 0.3
                  let
                      title $ option:unwrap-or
                        first $ split-lines text
                        , |
                    if (blank? title)
                      <> |<private> $ {}
                        :color $ hsl 0 0 80 $ :: :some 0.5
                        :font-style :italic
                      <> title $ {} $ :color :white
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Draft 'Number 'String
            :features $ #{} :js-ffi
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            assert-type (&map:get event :value) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'style-mono-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-mono-mark
            {} $ |& $ {} (:position :absolute) (:right 8) (:bottom 8) (:cursor :pointer)
          :examples $ []
          :schema $ :: 'String
        'style-side-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-side-container
            {} $ |& $ {} (:width 240)
              :background-color $ hsl 170 35 24
              :position :relative
              :color :white
              :overflow :auto
          :examples $ []
          :schema $ :: 'String
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox
            {} $ |& $ {} (:border :none) (:line-height |1.6em) (:font-size 16) (:outline :none) (:background-color :white) (:resize :none) (:padding "|16px 8px") (:padding-bottom 400)
          :examples $ []
          :schema $ :: 'String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {} $ |& $ {} (:padding "|0 8px") (:line-height |32px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:cursor :pointer) (:transition-duration |300ms) (:transition-property |top) (:position :absolute) (:width |100%)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require ([] respo-ui.css :as css)
            [] respo.css :refer $ [] defstyle
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> list-> <> div textarea span
            [] reel.comp.reel :refer $ [] comp-reel
            [] app.util :refer $ [] focus-text!
            [] app.schema :as app.schema
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |manuscript
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base app.schema/store) (assoc :store app.schema/store)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Reel
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ assert-type (reel-updater updater @*reel op) 'app.schema/Reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (reel previous) (render-app!)
            listen-devtools! |k dispatch!
            set-before-unload! $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            match
              storage-get $ config/site :storage-key
              (:some raw)
                dispatch! $ app.schema/Op :hydrate-storage $ decode-map-as (parse-cirru-edn raw) app.schema/Store
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set! (config/site :storage-key)
              format-cirru-edn $ decode-map-as (&map:get @*reel :store) app.schema/Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel previous) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel app.schema/store updater) 'app.schema/Reel
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration callback)
            set-interval! callback $ * 1000 duration
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            [] respo.core :refer $ [] render! clear-cache!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as app.schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] app.config :as config
            [] |./calcit.build-errors :default build-errors
            [] |bottom-tip :default hud!
            [] js-ffi.browser :refer $ [] query-selector set-before-unload! set-interval! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Draft (:id 'String) (:text 'String) (:touch-id 'Number) (:mono? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :text 'String
            :pointer 'String
            :hydrate-storage 'app.schema/Store
            :mono
            :reel/toggle
            :reel/recall 'Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove 'Number
          :examples $ []
          :schema $ :: 'EnumDef
        'Reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def Reel &unit
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Tag 'Dynamic
            :drafts $ :: 'Map 'String 'app.schema/Draft
            :pointer 'String
            :version 'String
          :examples $ []
          :schema $ :: 'StructDef
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def config
            {} $ :storage-key |manuscript
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def draft
            Draft :id | :text | :touch-id 0 :mono? false
          :examples $ []
          :schema $ :: 'app.schema/Draft
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :drafts
              {} $ |zero $ Draft :id |zero :text | :touch-id 0 :mono? false
              , :pointer |zero :version |
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            let
                pointer store.:pointer
              match op
                (:states cursor state)
                  decode-map-as (update-states store cursor state) app.schema/Store
                (:text text)
                  let
                      drafts store.:drafts
                      changed-draft $ match (get drafts pointer)
                        (:some draft)
                          -> draft (assoc :text text) (assoc :touch-id op-time)
                        (:none)
                          app.schema/Draft :id pointer :text text :touch-id op-time :mono? false
                      changed-drafts $ assoc drafts pointer changed-draft
                      empty-drafts $ -> changed-drafts vals $ filter
                        fn (draft) (blank? draft.:text)
                      next-drafts $ cond
                          = 1 $ count empty-drafts
                          , changed-drafts
                        (empty? empty-drafts)
                          assoc changed-drafts op-id $ app.schema/Draft :id op-id :text | :touch-id op-time :mono? false
                        true $ let
                            empty-ids $ -> empty-drafts
                              map $ fn (draft) draft.:id
                              filter $ fn (draft-id) (not= draft-id pointer)
                          dissoc changed-drafts & empty-ids
                    assoc store :drafts next-drafts
                (:pointer pointer-id) (assoc store :pointer pointer-id)
                (:hydrate-storage data) data
                (:mono)
                  match (get store.:drafts pointer)
                    (:some draft)
                      assoc store :drafts $ assoc store.:drafts pointer $ assoc draft :mono? (not draft.:mono?)
                    (:none) store
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-states
            app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {} $ 'focus-text!
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn focus-text! ()
            do
              request-animation-frame! $ fn (timestamp)
                match (query-selector |.text)
                  (:some element) (element-focus! element)
                  (:none) &unit
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ [] js-ffi.browser :refer $ [] element-focus! query-selector request-animation-frame!
