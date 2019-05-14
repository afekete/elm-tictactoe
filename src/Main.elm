module Main exposing (Model, Msg(..), boardView, init, main, update, view)

import Browser
import Element as El
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (src)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    El.layout [ El.padding 10 ] <|
        El.el [ El.width El.fill ] (boardView model)


boardView : Model -> El.Element Msg
boardView model =
    El.column [ El.centerX ]
        [ El.text "test"
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
