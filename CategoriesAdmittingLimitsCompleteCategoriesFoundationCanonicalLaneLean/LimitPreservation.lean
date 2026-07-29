import canonicalLaneMathlib.CompleteCategoryStructure

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure LimitPreservationPackage where
  functor : Type u
  preservesLimits : Prop
  preservesEqualizers : Prop
  preservesProducts : Prop
  preservesPullbacks : Prop
  preservesLimitsTerm : preservesLimits
  preservesEqualizersTerm : preservesEqualizers
  preservesProductsTerm : preservesProducts
  preservesPullbacksTerm : preservesPullbacks

def LimitPreservationClosed (L : LimitPreservationPackage) : Prop :=
  L.preservesLimits ∧ L.preservesEqualizers ∧ L.preservesProducts ∧ L.preservesPullbacks

theorem limit_preservation_closed_from_evidence (L : LimitPreservationPackage) :
    LimitPreservationClosed L := by
  exact And.intro L.preservesLimitsTerm (And.intro L.preservesEqualizersTerm (And.intro L.preservesProductsTerm L.preservesPullbacksTerm))

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse