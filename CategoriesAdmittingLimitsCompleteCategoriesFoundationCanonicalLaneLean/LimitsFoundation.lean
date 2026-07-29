import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoriesFoundationPackage where
  smallLimitsExist : Prop
  smallColimitsExist : Prop
  completeness : Prop
  cocompleteness : Prop

structure CompleteCategoriesFoundationEvidence (C : CompleteCategoriesFoundationPackage) where
  smallLimitsExistClosed : C.smallLimitsExist
  smallColimitsExistClosed : C.smallColimitsExist
  completenessClosed : C.completeness
  cocompletenessClosed : C.cocompleteness

def CompleteCategoriesFoundationClosed (C : CompleteCategoriesFoundationPackage) : Prop :=
  C.smallLimitsExist ∧ C.smallColimitsExist ∧ C.completeness ∧ C.cocompleteness

theorem complete_categories_foundation_closed_from_evidence
    (C : CompleteCategoriesFoundationPackage) (E : CompleteCategoriesFoundationEvidence C) :
    CompleteCategoriesFoundationClosed C := by
  exact And.intro E.smallLimitsExistClosed
    (And.intro E.smallColimitsExistClosed
      (And.intro E.completenessClosed E.cocompletenessClosed))

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse