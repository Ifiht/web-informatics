(ns web-informatics.middleware
  (:require
    [macchiato.middleware.defaults :as defaults]))

(defn wrap-defaults [handler]
  (defaults/wrap-defaults handler defaults/site-defaults))


