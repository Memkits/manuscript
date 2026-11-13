
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
            let
                store $ :store reel
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
                      :height $ + 120 $ * 32 (.len drafts)
                    -> drafts distinct-values (&set:to-list)
                      sort $ fn (a b)
                        if (blank? a.:text)
                          if (blank? b.:text) 0 -1
                          if (blank? b.:text) 1 $ - b.:touch-id a.:touch-id
                      map-indexed $ fn (idx draft)
                        [] draft.:id $ comp-title draft idx pointer
                textarea $ {}
                  :value $ match (get drafts pointer)
                    (:some draft) draft.:text
                    (:none) |
                  :spellcheck $ not mono?
                  :style $ if mono?
                    {} (:font-family ui/font-code) (:font-size |14px)
                    {}
                  :class-name $ str-spaced css/flex css/textarea |text style-textbox
                  :placeholder |new...
                  :on-input $ fn (event dispatch!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    dispatch! $ app.schema/Op :text $ event-value event
                comp-mono mono?
                comp-typed-reel (>> states :reel) reel ({}) on-control!
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-mono $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-mono (mono?)
            span
              {}
                :class-name $ str-spaced css/font-code style-mono-mark
                :style $ {} $ :color
                  if mono? (hsl 0 0 40) (hsl 0 0 90)
                :on-click $ fn (event dispatch!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                  dispatch! $ app.schema/Op :mono
              <> |Mono
          :examples $ []
          :schema $ quote $ Fn Bool (-> respo.schema/Component)
        'comp-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-title (draft idx pointer)
            let
                draft-id draft.:id
                text draft.:text
              div
                {} (:class-name style-title)
                  :style $ if (= pointer draft-id)
                    {}
                      :background-color $ hsl 0 0 100 $ Some 0.2
                      :top $ + 16 $ * idx 32
                    {} $ :top $ + 16 (* idx 32)
                  :on-click $ fn (event dispatch!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    dispatch! $ app.schema/Op :pointer draft-id
                    focus-text!
                if (blank? text)
                  <> |new... $ {} $ :color
                    hsl 0 0 100 $ Some 0.3
                  let
                      title $ .unwrap-or
                        first $ split-lines text
                        , |
                    if (blank? title)
                      <> |<private> $ {}
                        :color $ hsl 0 0 80 $ Some 0.5
                        :font-style |italic
                      <> title $ {} $ :color |white
          :examples $ []
          :schema $ quote $ Fn app.schema/Draft Number String (-> respo.schema/Component) (:features :js-ffi)
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as (:value event) 'String
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'style-mono-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-mono-mark
            {} $ |& $ {} (:position |absolute) (:right |8px) (:bottom |8px) (:cursor |pointer)
          :examples $ []
          :schema $ quote String
        'style-side-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-side-container
            {} $ |& $ {} (:width |240px)
              :background-color $ hsl 170 35 24
              :position |relative
              :color |white
              :overflow |auto
          :examples $ []
          :schema $ quote String
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox
            {} $ |& $ {} (:border |none) (:line-height |1.6em) (:font-size |16px) (:outline |none) (:background-color |white) (:resize |none) (:padding "|16px 8px") (:padding-bottom |400px)
          :examples $ []
          :schema $ quote String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {} $ |& $ {} (:padding "|0 8px") (:line-height |32px) (:white-space |nowrap) (:overflow |hidden) (:text-overflow |ellipsis) (:cursor |pointer) (:transition-duration |300ms) (:transition-property |top) (:position |absolute) (:width |100%)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div textarea span
            reel.comp.reel :refer $ comp-typed-reel
            app.util :refer $ focus-text!
            app.schema :as app.schema
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |manuscript
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel app.schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State app.schema/Op app.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            dispatch-resolved! op
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit) (:features :io :js-ffi :state)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (host/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            match
              storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                dispatch! $ app.schema/Op :hydrate-storage $ app.schema/decode-store (parse-cirru-edn raw)
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel previous) (render-app!)
            listen-devtools! |k on-control!
            set-before-unload! $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch-resolved! control)
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel previous) (render-app!)
                reset! *reel $ typed/refresh updater @*reel app.schema/store
                hud! |ok~ |Ok
                , &unit
              do (hud! |error build-errors) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration callback)
            set-interval! callback $ * 1000 duration
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Number
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as app.schema
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            js-ffi.shared :as host
            respo.ffi.browser :as dom
            app.config :as config
            |./calcit.build-errors.mjs :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ set-before-unload! set-interval! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Draft (:id String) (:text String) (:touch-id Number) (:mono? Bool)
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) String
            :text String
            :pointer String
            :hydrate-storage app.schema/Store
            :mono
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map respo.schema/CoordKey Dynamic
            :drafts $ Map String app.schema/Draft
            :pointer String
            :version String
          :examples $ []
          :schema $ quote StructDef
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def config
            {} $ :storage-key |manuscript
          :examples $ []
          :schema $ quote $ Map Tag String
        'decode-draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-draft (raw)
            decode-map-as
              select-keys (saved-record->map raw) ([] :id :text :touch-id :mono?)
              , Draft
          :examples $ []
          :schema $ quote $ Fn Input (-> Draft) (:generics Input)
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (raw)
            let
                data $ saved-record->map raw
                drafts $ decode-map-as
                  .unwrap $ get data :drafts
                  Map String Dynamic
                checked-drafts $ filter-map-kv drafts $ fn (key value)
                  let
                      draft $ decode-draft value
                    if
                      = key $ :id draft
                      MapEntryDecision :keep key draft
                      raise "|Draft key and ID differ"
                states $ decode-map-as
                  .unwrap $ get data :states
                  Map respo.schema/CoordKey Dynamic
                pointer $ decode-map-as
                  .unwrap $ get data :pointer
                  , 'String
                version $ decode-map-as
                  .unwrap $ get data :version
                  , 'String
              Store :states states :drafts checked-drafts :pointer pointer :version version
          :examples $ []
          :schema $ quote $ Fn Input (-> Store) (:generics Input)
        'draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def draft
            Draft :id | :text | :touch-id 0 :mono? false
          :examples $ []
          :schema $ quote Draft
        'saved-record->map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn saved-record->map (raw)
            if (struct? raw) (&struct:to-map raw)
              decode-map-as raw $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Tag Dynamic
            :generics Input
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :drafts
              {} $ |zero $ Draft :id |zero :text | :touch-id 0 :mono? false
              , :pointer |zero :version |
          :examples $ []
          :schema $ quote Store
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
                  assoc store :states $ decode-map-as (update-state-tree store.:states cursor state) (Map respo.schema/CoordKey Dynamic)
                (:text text)
                  let
                      drafts store.:drafts
                      changed-draft $ match (get drafts pointer)
                        (:some draft)
                          -> draft (assoc :text text) (assoc :touch-id op-time)
                        (:none)
                          app.schema/Draft :id pointer :text text :touch-id op-time :mono? false
                      changed-drafts $ assoc drafts pointer changed-draft
                      empty-drafts $ -> changed-drafts distinct-values $ filter
                        fn (draft) (blank? draft.:text)
                      next-drafts $ cond
                          = 1 $ .len empty-drafts
                          , changed-drafts
                        (empty? empty-drafts)
                          assoc changed-drafts op-id $ app.schema/Draft :id op-id :text | :touch-id op-time :mono? false
                        true $ let
                            empty-ids $ -> empty-drafts
                              map $ fn (draft) draft.:id
                              filter $ fn (draft-id) (not= draft-id pointer)
                          .fold (&set:to-list empty-ids) changed-drafts $ fn (remaining id)
                            hint-fn $ Fn (Map String schema/Draft) String $ -> (Map String schema/Draft)
                            .dissoc remaining id
                    assoc store :drafts next-drafts
                (:pointer pointer-id) (assoc store :pointer pointer-id)
                (:hydrate-storage data) data
                (:mono)
                  match (get store.:drafts pointer)
                    (:some draft)
                      assoc store :drafts $ assoc store.:drafts pointer $ assoc draft :mono? (not draft.:mono?)
                    (:none) store
          :examples $ []
          :schema $ quote $ Fn schema/Store schema/Op String Number (-> schema/Store) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-state-tree
            app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {} $ 'focus-text!
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn focus-text! ()
            request-animation-frame! $ fn (timestamp)
              match (query-selector |.text)
                (:some element) (element-focus! element)
                (:none) &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ js-ffi.browser :refer $ element-focus! query-selector request-animation-frame!
