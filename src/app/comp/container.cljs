
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
 comp-title
 (draft idx pointer)
 (div
  {:style (merge
           {:padding "0 8px",
            :line-height "32px",
            :white-space :nowrap,
            :overflow :hidden,
            :text-overflow :ellipsis,
            :cursor :pointer,
            :top (+ 8 (* idx 32)),
            :transition-duration "300ms",
            :transition-property "top",
            :position :absolute,
            :width "100%"}
           (if (= pointer (:id draft)) {:background-color (hsl 0 0 100 0.2)})),
   :on-click (action-> :pointer (:id draft))}
  (let [text (:text draft)]
    (if (string/blank? text)
      (<> "Empty" {:color (hsl 0 0 100 0.3)})
      (<> (first (string/split-lines text)) {:color :white})))))

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
     {:style {:width 240,
              :background-color (hsl 170 35 24),
              :position :relative,
              :color :white}}
     (->> drafts
          vals
          (sort-by (fn [draft] (- 0 (:touch-id draft))))
          (map-indexed (fn [idx draft] [(:id draft) (comp-title draft idx pointer)]))
          (sort-by first)))
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
    (comment comp-inspect "drafts" drafts {:position :absolute, :bottom 0}))))
