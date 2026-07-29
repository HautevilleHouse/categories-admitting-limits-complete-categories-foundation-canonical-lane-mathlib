import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoryPackage where
  smallLimitsExist : Prop
  equalizersExist : Prop
  productsExist : Prop
  pullbacksExist : Prop
  terminalObjectExists : Prop

structure CompleteCategoryEvidence (C : CompleteCategoryPackage) where
  smallLimitsExistClosed : C.smallLimitsExist
  equalizersExistClosed : C.equalizersExist
  productsExistClosed : C.productsExist
  pullbacksExistClosed : C.pullbacksExist
  terminalObjectExistsClosed : C.terminalObjectExists

def CompleteCategoryClosed (C : CompleteCategoryPackage) : Prop :=
  C.smallLimitsExist ∧ C.equalizersExist ∧ C.productsExist ∧ C.pullbacksExist ∧ C.terminalObjectExists

theorem complete_category_closed_from_evidence (C : CompleteCategoryPackage) (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.smallLimitsExistClosed
    (And.intro E.equalizersExistClosed
      (And.intro E.productsExistClosed
        (And.intro E.pullbacksExistClosed E.terminalObjectExistsClosed)))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompleteCategoryClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
