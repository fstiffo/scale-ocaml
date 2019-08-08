let () =
  print_endline (Yojson.Safe.prettify (Scale_j.string_of_scale Scale.state))

let () =
  Scale.state |> Scale.cassa |> Printf.printf "Cassa: %d€\n"
