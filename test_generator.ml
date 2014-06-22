let record_size = int_of_string Sys.argv.(1)

let modif_nb  = int_of_string Sys.argv.(2)

let generate_record c name type_name initial_value new_value =
   Printf.fprintf c "type %s = {\n" name;
  for i = 1 to record_size do
    Printf.fprintf c "  %s%d: %s;\n" name i type_name;
  done;
  Printf.fprintf c "}

let () =
  let bench = Array.init %d (fun _ -> { " (1024 * 1024 * 8);
  for i = 1 to record_size do
    Printf.fprintf c "%s%d = %s; " name i initial_value;
  done;
  Printf.fprintf c "}) in
  let exec_start = Unix.gettimeofday () in
  let _ : _ array = Array.map (fun t -> { t with ";
  for i = 1 to modif_nb do
    Printf.fprintf c "%s%d = %s; " name i new_value;
  done;
  output_string c "}) bench in
  let exec_end = Unix.gettimeofday () in
  Printf.printf \"%f\\n\" (exec_end -. exec_start)\n\n"

let () =
  generate_record stdout "t" "int option" "None" "Some 0";
  generate_record stdout "u" "int" "0" "1"
