(* Auto-generated from "scale.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type param = { costo_scale: int; num_pulizie_mese: int; quota_mensile: int }

type condomino = [ `Michela | `Gerardo | `Elena | `Giulia ]

type operazione = [
    `VersamentoQuote of (condomino * int)
  | `PagamentoScale
  | `AltraSpesa of (string * int)
  | `AltroVersamento of (string * int)
  | `Prestito of int
  | `Restituzione of int
]

type date = [ `Date of (int * int * int) ]

type movimento = (date * operazione)

type attuale = (date * param)

type scale = {
  tempo_zero: date;
  attuale: attuale;
  condomini: condomino list;
  movimenti: movimento list
}
