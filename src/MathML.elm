module MathML exposing
    ( math
    , mi, mi_, mn, mn_, mo, mo_, ms, mspace, mtext, mtext_
    , merror, mfrac, mpadded, mphantom, mroot, mrow, msqrt, mstyle
    , mmultiscripts, mover, mprescripts, msub, msubsup, msup, munder, munderover
    , mtable, mtd, mtr
    , maction, semantics, annotation, annotationXml
    )

{-|


## Top-level elements

@docs math


## Token elements

@docs mi, mi_, mn, mn_, mo, mo_, ms, mspace, mtext, mtext_


### General layout

@docs merror, mfrac, mpadded, mphantom, mroot, mrow, msqrt, mstyle


### Script and limit elements

@docs mmultiscripts, mover, mprescripts, msub, msubsup, msup, munder, munderover


### Tabular math

@docs mtable, mtd, mtr


### Other elements

@docs maction, semantics, annotation, annotationXml

-}

import VirtualDom exposing (Attribute, Node, nodeNS, text)


namespace : String
namespace =
    "http://www.w3.org/1998/Math/MathML"


node : String -> List (Attribute msg) -> List (Node msg) -> Node msg
node tag attrs children =
    nodeNS namespace tag attrs children


textNode : String -> String -> Node msg
textNode tag value =
    nodeNS namespace tag [] [ text value ]


{-| Top level element used to display math.

This has two element-specific attributes:

  - `display`,
  - `alttext`.

-}
math : List (Attribute msg) -> List (Node msg) -> Node msg
math attrs children =
    node "math" attrs children


{-| -}
maction : List (Attribute msg) -> List (Node msg) -> Node msg
maction =
    node "maction"


{-| -}
merror : List (Attribute msg) -> List (Node msg) -> Node msg
merror =
    node "merror"


{-| -}
mfrac : List (Attribute msg) -> List (Node msg) -> Node msg
mfrac =
    node "mfrac"


{-| -}
mi : List (Attribute msg) -> List (Node msg) -> Node msg
mi =
    node "mi"


mi_ : String -> Node msg
mi_ =
    textNode "mi"


{-| -}
mmultiscripts : List (Attribute msg) -> List (Node msg) -> Node msg
mmultiscripts =
    node "mmultiscripts"


{-| -}
mn : List (Attribute msg) -> List (Node msg) -> Node msg
mn =
    node "mn"


mn_ : Float -> Node msg
mn_ value =
    textNode "mn" (String.fromFloat value)


mo : List (Attribute msg) -> List (Node msg) -> Node msg
mo =
    node "mo"


{-| Simplified version of `mo`.
-}
mo_ : String -> Node msg
mo_ =
    textNode "mo"


{-| -}
mover : List (Attribute msg) -> List (Node msg) -> Node msg
mover =
    node "mover"


{-| -}
mpadded : List (Attribute msg) -> List (Node msg) -> Node msg
mpadded =
    node "mpadded"


{-| -}
mprescripts : List (Attribute msg) -> List (Node msg) -> Node msg
mprescripts =
    node "mprescripts"


{-| -}
mphantom : List (Attribute msg) -> List (Node msg) -> Node msg
mphantom =
    node "mphantom"


{-| -}
mroot : List (Attribute msg) -> List (Node msg) -> Node msg
mroot =
    node "mroot"


{-| -}
mrow : List (Attribute msg) -> List (Node msg) -> Node msg
mrow =
    node "mrow"


{-| -}
ms : List (Attribute msg) -> List (Node msg) -> Node msg
ms =
    node "ms"


{-| -}
mspace : List (Attribute msg) -> List (Node msg) -> Node msg
mspace =
    node "mspace"


{-| -}
msqrt : List (Attribute msg) -> List (Node msg) -> Node msg
msqrt =
    node "msqrt"


{-| -}
mstyle : List (Attribute msg) -> List (Node msg) -> Node msg
mstyle =
    node "mstyle"


{-| -}
msub : List (Attribute msg) -> List (Node msg) -> Node msg
msub =
    node "msub"


{-| -}
msup : List (Attribute msg) -> List (Node msg) -> Node msg
msup =
    node "msup"


{-| -}
msubsup : List (Attribute msg) -> List (Node msg) -> Node msg
msubsup =
    node "msubsup"


{-| -}
mtable : List (Attribute msg) -> List (Node msg) -> Node msg
mtable =
    node "mtable"


{-| -}
mtd : List (Attribute msg) -> List (Node msg) -> Node msg
mtd =
    node "mtd"


{-| -}
mtext : List (Attribute msg) -> List (Node msg) -> Node msg
mtext =
    node "mtext"


{-| -}
mtext_ : String -> Node msg
mtext_ =
    textNode "mtext"


{-| -}
mtr : List (Attribute msg) -> List (Node msg) -> Node msg
mtr =
    node "mtr"


{-| -}
munder : List (Attribute msg) -> List (Node msg) -> Node msg
munder =
    node "munder"


{-| -}
munderover : List (Attribute msg) -> List (Node msg) -> Node msg
munderover =
    node "munderover"


{-| -}
semantics : List (Attribute msg) -> List (Node msg) -> Node msg
semantics =
    node "semantics"


{-| -}
annotation : List (Attribute msg) -> List (Node msg) -> Node msg
annotation =
    node "annotation"


{-| -}
annotationXml : List (Attribute msg) -> List (Node msg) -> Node msg
annotationXml =
    node "annotation-xml"
