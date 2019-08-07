open Scale_t
let () = print_endline Scale.message
let c = `Elena
let () = print_endline (Scale_j.string_of_condomino c)
let o = `VersamentoQuote ( c, 74)
let () = print_endline (Scale_j.string_of_operazione o)
let m = (`Date (2019,7,1), o )
let () = print_endline (Yojson.Safe.prettify (Scale_j.string_of_movimento m))
let () = 
  let fname = "scale.dat" in
  Atdgen_runtime.Util.Biniou.to_file Scale_j.write_movimento fname m
let t_0 = `Date (2019,7,1)
let s : scale = {
  tempo_zero = t_0;
  attuale = (t_0, { costo_scale = 20; num_pulizie_mese=2; quota_mensile=12 });
  condomini = [`Michela;`Gerardo;`Elena;`Giulia];
  movimenti = [
    (t_0, (`AltroVersamento ("Appianamento", 333)));
    (t_0, `VersamentoQuote (`Michela, 74));
    (t_0, `VersamentoQuote (`Gerardo, 78));
    (t_0, `VersamentoQuote (`Elena, 48));
    (`Date (2019, 7, 22), `Prestito 500);
    (`Date (2019, 7, 11), `PagamentoScale)
  ]
}
let () = 
  let fname = "scale.dat" in
  Atdgen_runtime.Util.Biniou.to_file Scale_j.write_scale fname s

let () =
  let fname = "scale.dat" in
  let s = Atdgen_runtime.Util.Json.from_file Scale_j.read_scale fname in 
  print_endline (Yojson.Safe.prettify (Scale_j.string_of_scale s))