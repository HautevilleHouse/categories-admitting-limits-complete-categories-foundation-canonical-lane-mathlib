import canonicalLaneMathlib.LimitsAdmittedObject

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoryStructure where
  smallLimitsExist : Prop
  equalizerExists : Prop
  productExists : Prop
  pullbackExists : Prop
  smallLimitsExistTerm : smallLimitsExist
  equalizerExistsTerm : equalizerExists
  productExistsTerm : productExists
  pullbackExistsTerm : pullbackExists

def CompleteCategoryStructureClosed (C : CompleteCategoryStructure) : Prop :=
  C.smallLimitsExist ∧ C.equalizerExists ∧ C.productExists ∧ C.pullbackExists

theorem complete_category_structure_closed_from_evidence (C : CompleteCategoryStructure) :
    CompleteCategoryStructureClosed C := by
  exact And.intro C.smallLimitsExistTerm (And.intro C.equalizerExistsTerm (And.intro C.productExistsTerm C.pullbackExistsTerm))

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse