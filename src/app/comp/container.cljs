
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
            [respo.comp.inspect :refer [comp-inspect]]
            [app.util :refer [focus-text!]]))

(defcomp
 comp-mono
 (mono?)
 (span
  {:style {:font-family ui/font-code,
           :position :absolute,
           :right 8,
           :bottom 8,
           :color (if mono? (hsl 0 0 40) (hsl 0 0 90)),
           :cursor :pointer},
   :on-click (action-> :mono nil)}
  (<> "Mono")))

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
            :top (+ 16 (* idx 32)),
            :transition-duration "300ms",
            :transition-property "top",
            :position :absolute,
            :width "100%"}
           (if (= pointer (:id draft)) {:background-color (hsl 0 0 100 0.2)})),
   :on-click (fn [e d! m!] (d! :pointer (:id draft)) (focus-text!))}
  (let [text (:text draft)]
    (if (string/blank? text)
      (<> "new..." {:color (hsl 0 0 100 0.3)})
      (let [title (first (string/split-lines text))]
        (if (string/blank? title)
          (<> "<private>" {:color (hsl 0 0 80 0.5), :font-style :italic})
          (<> title {:color :white})))))))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)
       states (:states store)
       drafts (:drafts store)
       pointer (:pointer store)
       mono? (get-in store [:drafts pointer :mono?])]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (list->
     {:style {:width 240,
              :background-color (hsl 170 35 24),
              :position :relative,
              :color :white}}
     (->> drafts
          vals
          (sort-by
           (fn [draft]
             (unchecked-negate
              (if (string/blank? (:text draft)) js/Number.MAX_VALUE (:touch-id draft)))))
          (map-indexed (fn [idx draft] [(:id draft) (comp-title draft idx pointer)]))
          (sort-by first)))
    (textarea
     {:value (:text (get drafts pointer)),
      :spellcheck (not mono?),
      :style (merge
              ui/flex
              ui/textarea
              {:border :none,
               :line-height "1.6em",
               :font-size 16,
               :outline :none,
               :background-color :white,
               :resize :none,
               :padding "16px 8px",
               :padding-bottom 400}
              (if mono? {:font-family ui/font-code, :font-size 14})),
      :class-name "text",
      :placeholder "new...",
      :on-input (action-> :text (:value %e))})
    (comp-mono mono?)
    (cursor-> :reel comp-reel states reel {})
    (comment
     comp-inspect
     "draft"
     (get-in store [:drafts pointer])
     {:position :absolute, :bottom 0}))))
