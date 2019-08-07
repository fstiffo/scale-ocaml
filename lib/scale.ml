open Scale_t

let message = "Hello, world!"
let state = 
  let fname = "scale.json" in
  try Atdgen_runtime.Util.Json.from_file Scale_j.read_scale fname
  with e ->
    let msg = Printexc.to_string e
    and stack = Printexc.get_backtrace () in
    Printf.eprintf "there was an error: %s%s\n" msg stack;
    Printf.eprintf "a new `scale.json` has been created.\n";
    let t_0 = `Date (2019,7,1) in
    let s : Scale_j.scale = {
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
    } in
    Atdgen_runtime.Util.Json.to_file Scale_j.write_scale  fname s; s

let contabile (s: scale) (op: operazione) : int = match op with
    `VersamentoQuote (_, i) -> i
  | `PagamentoScale -> let (_, i) = s.attuale in - i.costo_scale
  | `AltraSpesa (_, i) -> - i
  | `AltroVersamento (_, i) -> i
  | `Prestito i -> - i
  | `Restituzione i -> i

let cassa (s: scale) : int =
  let ms = s.movimenti in 
  ms |> List.map (fun ((_, op) : movimento) -> contabile s op) |> List.fold_left (+) 0
