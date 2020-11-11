module MathML.Attributes exposing
    ( Display(..)
    , display, alttext
    )

{-|


# Types

@docs Display


# Attributes for the `math` element

@docs display, alttext

-}

import VirtualDom exposing (Attribute, attribute)


type Display
    = DisplayBlock
    | DisplayInline


display : Display -> Attribute msg
display value =
    case value of
        DisplayBlock ->
            attribute "display" "block"

        DisplayInline ->
            attribute "display" "inline"


alttext : String -> Attribute msg
alttext =
    attribute "alttext"
