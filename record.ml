type t = {
    t1: int option;
    t2: int option;
    t3: int option;
    t4: int option;
    t5: int option;
    t6: int option;
  }

type u = {
    u1: int;
    u2: int;
    u3: int;
    u4: int;
    u5: int;
    u6: int;
  }

let () =
  let count = 1024 * 1024 * 8 in
  let bench = Array.init count (fun _ -> { t1 = None; t2 = None; t3 = None; t4 = None; t5 = None; t6 = None }) in
  let exec_start = Unix.gettimeofday () in
  let _ : t array = Array.map (fun t -> { t with t1 = Some 0 }) bench in
  let exec_end = Unix.gettimeofday () in
  Printf.printf "%f\n" (exec_end -. exec_start);
  let bench = Array.init count (fun _ -> { u1 = 0; u2 = 0; u3 = 0; u4 = 0; u5 = 0; u6 = 0 }) in
  let exec_start = Unix.gettimeofday () in
  let _ : u array = Array.map (fun t -> { t with u1 = 1 }) bench in
  let exec_end = Unix.gettimeofday () in
  Printf.printf "%f\n" (exec_end -. exec_start)
