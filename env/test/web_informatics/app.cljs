(ns web-informatics.app
  (:require
    [doo.runner :refer-macros [doo-tests]]
    [web-informatics.core-test]))

(doo-tests 'web-informatics.core-test)


