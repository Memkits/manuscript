
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> list-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo.util.list :refer [map-val]]
            [clojure.string :as string]
            [respo.comp.inspect :refer [comp-inspect]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)
       states (:states store)
       drafts (:drafts store)
       pointer (:pointer store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (list->
     {:style {:width 240, :background-color (hsl 170 35 24)}}
     (->> drafts
          (map-val
           (fn [draft]
             (div
              {:style (merge
                       {:padding "0 8px",
                        :line-height "2.4em",
                        :white-space :nowrap,
                        :overflow :hidden,
                        :text-overflow :ellipsis,
                        :cursor :pointer}
                       (if (= pointer (:id draft)) {:background-color (hsl 0 0 100 0.2)})),
               :on-click (action-> :pointer (:id draft))}
              (let [text (:text draft)]
                (if (string/blank? text)
                  (<> "Empty" {:color (hsl 0 0 100 0.5)})
                  (<> (first (string/split-lines text)) {:color :white}))))))))
    (textarea
     {:value (:text (get drafts pointer)),
      :style (merge
              ui/flex
              ui/textarea
              {:border :none,
               :font-size 16,
               :outline :none,
               :background-color :white,
               :resize :none}),
      :class-name "text",
      :placeholder "Your note...",
      :on-input (action-> :text (:value %e))})
    (cursor-> :reel comp-reel states reel {})
    (comp-inspect "drafts" drafts {:position :absolute, :bottom 0}))))
