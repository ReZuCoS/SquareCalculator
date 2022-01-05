namespace SquareCalculator
{
    public abstract class Figure
    {
        public double Square
        {
            get
            {
                Validate();
                return CalculateSquare();
            }
        }

        protected abstract void Validate();

        protected abstract double CalculateSquare();
    }
}
