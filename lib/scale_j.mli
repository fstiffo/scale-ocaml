(* Auto-generated from "scale.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type param = Scale_t.param = {
  costo_scale: int;
  num_pulizie_mese: int;
  quota_mensile: int
}

type condomino = Scale_t.condomino

type operazione = Scale_t.operazione

type date = Scale_t.date

type movimento = Scale_t.movimento

type attuale = Scale_t.attuale

type scale = Scale_t.scale = {
  tempo_zero: date;
  attuale: attuale;
  condomini: condomino list;
  movimenti: movimento list
}

val write_param :
  Bi_outbuf.t -> param -> unit
  (** Output a JSON value of type {!param}. *)

val string_of_param :
  ?len:int -> param -> string
  (** Serialize a value of type {!param}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_param :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> param
  (** Input JSON data of type {!param}. *)

val param_of_string :
  string -> param
  (** Deserialize JSON data of type {!param}. *)

val write_condomino :
  Bi_outbuf.t -> condomino -> unit
  (** Output a JSON value of type {!condomino}. *)

val string_of_condomino :
  ?len:int -> condomino -> string
  (** Serialize a value of type {!condomino}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_condomino :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> condomino
  (** Input JSON data of type {!condomino}. *)

val condomino_of_string :
  string -> condomino
  (** Deserialize JSON data of type {!condomino}. *)

val write_operazione :
  Bi_outbuf.t -> operazione -> unit
  (** Output a JSON value of type {!operazione}. *)

val string_of_operazione :
  ?len:int -> operazione -> string
  (** Serialize a value of type {!operazione}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_operazione :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> operazione
  (** Input JSON data of type {!operazione}. *)

val operazione_of_string :
  string -> operazione
  (** Deserialize JSON data of type {!operazione}. *)

val write_date :
  Bi_outbuf.t -> date -> unit
  (** Output a JSON value of type {!date}. *)

val string_of_date :
  ?len:int -> date -> string
  (** Serialize a value of type {!date}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_date :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> date
  (** Input JSON data of type {!date}. *)

val date_of_string :
  string -> date
  (** Deserialize JSON data of type {!date}. *)

val write_movimento :
  Bi_outbuf.t -> movimento -> unit
  (** Output a JSON value of type {!movimento}. *)

val string_of_movimento :
  ?len:int -> movimento -> string
  (** Serialize a value of type {!movimento}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_movimento :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> movimento
  (** Input JSON data of type {!movimento}. *)

val movimento_of_string :
  string -> movimento
  (** Deserialize JSON data of type {!movimento}. *)

val write_attuale :
  Bi_outbuf.t -> attuale -> unit
  (** Output a JSON value of type {!attuale}. *)

val string_of_attuale :
  ?len:int -> attuale -> string
  (** Serialize a value of type {!attuale}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_attuale :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> attuale
  (** Input JSON data of type {!attuale}. *)

val attuale_of_string :
  string -> attuale
  (** Deserialize JSON data of type {!attuale}. *)

val write_scale :
  Bi_outbuf.t -> scale -> unit
  (** Output a JSON value of type {!scale}. *)

val string_of_scale :
  ?len:int -> scale -> string
  (** Serialize a value of type {!scale}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_scale :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> scale
  (** Input JSON data of type {!scale}. *)

val scale_of_string :
  string -> scale
  (** Deserialize JSON data of type {!scale}. *)

