(ns web-informatics.fetch
  (:require
   [cljs.nodejs :as node]))

(def request (node/require "request"))
