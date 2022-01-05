using Xunit;
using SquareCalculator.Figures;

namespace SquareCalculator.Tests
{
    public class PositiveTests
    {
        [Fact]
        public void CalculateCircleSquareTest()
        {
            double expectedResult = 1256.6370614359173;

            Circle circle = new Circle(20);

            double result = circle.Square;

            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void CalculateTriangleSquareTest()
        {
            double expectedResult = 6;

            Triangle triangle = new Triangle(3, 4, 5);

            double result = triangle.Square;

            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void CheckOnRectangularA()
        {
            bool expectedResult = true;

            Triangle triangle = new Triangle(5, 4, 3);

            bool result = triangle.IsRectangular;

            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void CheckOnRectangularB()
        {
            bool expectedResult = true;

            Triangle triangle = new Triangle(4, 5, 3);

            bool result = triangle.IsRectangular;

            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void CheckOnRectangularC()
        {
            bool expectedResult = true;

            Triangle triangle = new Triangle(3, 4, 5);

            bool result = triangle.IsRectangular;

            Assert.Equal(expectedResult, result);
        }

        [Fact]
        public void CheckOnNonRectangular()
        {
            bool expectedResult = false;

            Triangle triangle = new Triangle(5, 5, 5);

            bool result = triangle.IsRectangular;

            Assert.Equal(expectedResult, result);
        }
    }
}
