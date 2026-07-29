import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoryPackage where
  objectType : Type u
  morphismType : Type v
  identity : morphismType
  composition : morphismType → morphismType → morphismType
  associativity : Prop
  identityLaw : Prop
  smallCoproducts : Prop
  equalizers : Prop
  smallLimits : smallCoproducts ∧ equalizers

structure CompleteCategoryEvidence (C : CompleteCategoryPackage) where
  associativityClosed : C.associativity
  identityLawClosed : C.identityLaw
  smallCoproductsClosed : C.smallCoproducts
  equalizersClosed : C.equalizers
  smallLimitsClosed : C.smallLimits

def CompleteCategoryClosed (C : CompleteCategoryPackage) : Prop :=
  C.associativity ∧ C.identityLaw ∧ C.smallCoproducts ∧ C.equalizers ∧ C.smallLimits

theorem complete_category_closed_from_evidence (C : CompleteCategoryPackage) (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.identityLawClosed (And.intro E.smallCoproductsClosed (And.intro E.equalizersClosed E.smallLimitsClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
