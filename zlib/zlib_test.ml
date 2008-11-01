(* Zlib OCaml binding test cases.
 * Copyright (C) 2008 Reilly Grant
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *)

open OUnit

let data1 = "x\001+)JMU021c040031Q\240\247M\204NM\203\204Ie\184\187\152\191\162\202\237\185\241\203\127\205\027\206{\234L\154\226\213\243\001\170\168(51%7U\175\164\162\132!\166\159\157sy\234\231\179u\182\254Kori\217\253\205*\127\013UUaa\150\153W\146ZT\160\151\155\195\144\019\248\1946\182 \177\1634\233\204\195\011k\185\220nU\028J\196\162.\147Ai\2514\147/\207\247N\190\239\198\246\141I;pY\006s[\004\186\194\248\220\196\204<\144\169\021\246-Y2?\191v\253h\022v{\188\241;_n,\027\134\226\146\212\226\146b\144\226\173\183\158\199N\189\145\242=e]\161\2559\243\154O\223^\169\190\003\0008\255g\\"

let result1 = "tree 246\000100644 OMakefile\000\221\163\015xzF\2313\233\254\131\176\207I,\146\148J\140\240100644 readme.txt\000\\\143\007\t\167e\243\205~=O\165\217\n*>\253jw\235100644 x86interp.ml\000lQ\232=]pa\136ub\204\225\208\173\nF\218x\194a100644 x86interp.mli\000\"\183\1504\244\231\189\147\223F\006\246\002+Q\166h\003\134X100644 x86interp_main.ml\000x?\132j\028\249\245\138\248\131\019F\227\177\247\014m]\006X100644 x86interptests.ml\000\181\218\231]\149\216d\247d\174qO\2067|\242\246\234%\238"

let test_fixture = "zlib" >:::
[
 "inflate1" >:: ( fun () ->
   assert_equal (Zlib.inflate data1 255) result1 )
]

let _ = run_test_tt test_fixture
