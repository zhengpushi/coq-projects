Require Import mynat.

(** * Demo usage of mynat theory *)

(** ** Definitions of natural numbers *)
Notation "0" := zero.
Notation "1" := (succ 0).
Notation "2" := (succ 1).
Notation "3" := (succ 2).
Notation "4" := (succ 3).
Notation "5" := (succ 4).

(** ** Properties *)

(** 1 = 1 + 0 (html comment) *)
Fact fact1 : 1 = 1 + 0.
Proof. simpl. auto. Qed.

(* 2 = 1 + 1 (general comment) *)
Example fact2 : 2 = 1 + 1.
Proof. simpl. auto. Qed.
