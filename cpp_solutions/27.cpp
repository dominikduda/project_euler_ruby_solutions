#include <iostream>

using namespace std;

class QuadraticFormula {
    public:
        QuadraticFormula(int coefficient_a, int coefficient_b) {
            a = coefficient_a;
            b = coefficient_b;
            n = 0;
        }

        void next_n() {
            n++;
        }

        bool result_prime() {
            int result = calculate();
            if (result < 0) { result *= -1; }
            for (int i = 2; i < result; i++) {
                if (result % i == 0) { return false; }
            }
            return true;
        }

    private:
        int a, b, n;

        int calculate() {
            return n * n + a * n + b;
        }
};

int main() {
    int counter = 0, max = 0, product;
    for (int i = -999; i < 1000; i++) {
        for (int j = -999; j < 1000; j++) {
            QuadraticFormula expression(j, i);
            while (expression.result_prime()) {
                counter++;
                expression.next_n();
            }
            if (counter > max) {
                max = counter;
                product = i * j;
            }
            counter = 0;
        }
    }
    cout << product;
}
