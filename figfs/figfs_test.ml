let _ =
  Repository.set_repo_dir "..";
  Workspace.init ();
  Workspace.create "test1" "9e67d377289bb2d1f0c0fd0b6e44a5b217003271";
  print_endline (String.concat " " (Workspace.list ()));
  Workspace.create_file "test1" "/foo/bar" "foobar" 0o644;
  print_endline
    (Workspace.Mode.to_string (Workspace.stat_file "test1" "/foo"));
  print_endline
    (Workspace.Mode.to_string (Workspace.stat_file "test1" "/foo/bar"));
  Workspace.rename_file "test1" "/foo/bar" "/bar/foo";
  print_endline
    (Workspace.Mode.to_string (Workspace.stat_file "test1" "/bar/foo"));
  print_endline (Workspace.file_path "test1" "/foo/bar");
  match Workspace.stat_file "test1" "/" with
  | Workspace.Mode.Directory id ->
      print_endline (String.concat " " (Workspace.list_dir id []))
  | _ -> print_endline "Error: Root not a directory.";
  print_endline (Workspace.base "test1");
  Workspace.destroy "test1"
