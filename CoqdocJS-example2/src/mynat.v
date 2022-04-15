(** * Some Module *)

(** this is html comment *)

(* this is general comment *)

(** ** Type Definitions *)

Inductive mynat : Set :=
  | zero
  | succ (n : mynat).

(** ** Operations *)

(** plus two number *)
Fixpoint mynat_plus n1 n2 : mynat :=
  match n1, n2 with
  | zero, _ => n2
  | succ n1', _ => succ (mynat_plus n1' n2)
  end.

Infix "+" := mynat_plus.

(** ** Properties *)

(** succ plus equal to plus succ *)
Lemma mynat_plus_Sn_m : forall n m, succ n + m = succ (n + m).
Proof.
  induction n; intros; simpl; auto.
Qed.

(** succ plus equal to plus succ *)
Lemma mynat_plus_n_Sm : forall n m, n + (succ m) = succ (n + m).
Proof.
  induction n; intros; simpl; auto. rewrite IHn. auto.
Qed.

(** right plus zero has no effect *)
Lemma mynat_plus_zero_r : forall n, n + zero = n.
Proof.
  induction n; auto.
  rewrite mynat_plus_Sn_m. rewrite IHn. auto.
Qed.

(* this is a general comment, for test *)

(** plus is commutative. << a + b = b + a >> *)
Lemma mynat_plus_comm : forall n1 n2, n1 + n2 = n2 + n1.
Proof.
  induction n1; intros; simpl.
  rewrite mynat_plus_zero_r. auto.
  rewrite mynat_plus_n_Sm. rewrite IHn1. auto.
Qed.
