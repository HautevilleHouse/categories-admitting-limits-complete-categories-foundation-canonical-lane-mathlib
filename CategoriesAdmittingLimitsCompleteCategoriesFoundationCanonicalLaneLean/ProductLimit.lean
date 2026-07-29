import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundation.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure ProductLimit (C : CompleteCategory) (I : Type u) where
  productObject : C.obj
  projections : ∀ (i : I), C.hom productObject (C.obj)
  universalProperty : ∀ (other : C.obj) (fams : ∀ (i : I), C.hom other (C.obj)),
    ∃! (u : C.hom other productObject), ∀ (i : I), C.comp u (projections i) = fams i
  universalPropertyTerm : universalProperty

structure ProductLimitEvidence {C : CompleteCategory} {I : Type u} (P : ProductLimit C I) where
  universalPropertyClosed : P.universalProperty

def ProductLimitClosed {C : CompleteCategory} {I : Type u} (P : ProductLimit C I) : Prop :=
  P.universalProperty

theorem product_limit_closed_from_evidence {C : CompleteCategory} {I : Type u} (P : ProductLimit C I)
    (E : ProductLimitEvidence P) : ProductLimitClosed P :=
  E.universalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse