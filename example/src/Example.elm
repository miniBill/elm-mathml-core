module Example exposing (main)

import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import MathML exposing (math, mfrac, mi_, mn, mn_, mo_, mrow, msup, munderover)
import MathML.Attributes exposing (Display(..), display)


main : Html msg
main =
    div []
        [ text "Before, "
        , math
            [ display DisplayBlock
            , style "border" "1px dotted black"
            ]
            [ mrow []
                [ munderover []
                    [ mo_ "∑"
                    , mrow []
                        [ mi_ "n"
                        , mo_ "="
                        , mn_ 1
                        ]
                    , mrow []
                        [ mo_ "+"
                        , mn [] [ text "∞" ]
                        ]
                    ]
                , mfrac []
                    [ mn_ 1
                    , msup []
                        [ mi_ "n"
                        , mn_ 2
                        ]
                    ]
                ]
            , mo_ "="
            , mfrac []
                [ msup []
                    [ mi_ "π"
                    , mn_ 2
                    ]
                , mn_ 6
                ]
            ]
        , text ", and after"
        ]
