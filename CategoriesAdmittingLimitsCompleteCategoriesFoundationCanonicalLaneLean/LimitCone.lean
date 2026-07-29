import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundation.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure LimitCone {C : CompleteCategory} (D : Type u → Type v) [Functor D C.obj] where
  apex : C.obj
  projections : ∀ (i : Type u), C.hom apex (D i)
  universalProperty : ∀ (other : C.obj) (morphisms : ∀ (i : Type u), C.hom other (D i)),
    ∃! (u : C.hom other apex), ∀ (i : Type u), C.comp u (projections i) = morphisms i
  universalPropertyTerm : universalProperty

structure LimitConeEvidence {C : CompleteCategory} {D : Type u → Type v} [Functor D C.obj]
    (L : LimitCone D) where
  universalPropertyClosed : L.universalProperty

def LimitConeClosed {C : CompleteCategory} {D : Type u → Type v} [Functor D C.obj]
    (L : LimitCone D) : Prop :=
  L.universalProperty

theorem limit_cone_closed_from_evidence {C : CompleteCategory} {D : Type u → Type v} [Functor D C.obj]
    (L : LimitCone D) (E : LimitConeEvidence L) : LimitConeClosed L :=
  E.universalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse