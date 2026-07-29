import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompleteCategoriesFoundationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse