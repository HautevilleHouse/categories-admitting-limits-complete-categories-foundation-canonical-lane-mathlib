import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundation.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure PullbackLimit (C : CompleteCategory) {X Y Z : C.obj} (f : C.hom X Z) (g : C.hom Y Z) where
  pullbackObject : C.obj
  p1 : C.hom pullbackObject X
  p2 : C.hom pullbackObject Y
  commutingSquare : C.comp p1 f = C.comp p2 g
  universalProperty : ∀ (other : C.obj) (h1 : C.hom other X) (h2 : C.hom other Y),
    C.comp h1 f = C.comp h2 g → ∃! (u : C.hom other pullbackObject), C.comp u p1 = h1 ∧ C.comp u p2 = h2
  universalPropertyTerm : universalProperty

structure PullbackLimitEvidence {C : CompleteCategory} {X Y Z : C.obj} {f : C.hom X Z} {g : C.hom Y Z}
    (P : PullbackLimit C f g) where
  universalPropertyClosed : P.universalProperty

def PullbackLimitClosed {C : CompleteCategory} {X Y Z : C.obj} {f : C.hom X Z} {g : C.hom Y Z}
    (P : PullbackLimit C f g) : Prop :=
  P.universalProperty

theorem pullback_limit_closed_from_evidence {C : CompleteCategory} {X Y Z : C.obj} {f : C.hom X Z} {g : C.hom Y Z}
    (P : PullbackLimit C f g) (E : PullbackLimitEvidence P) : PullbackLimitClosed P :=
  E.universalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse