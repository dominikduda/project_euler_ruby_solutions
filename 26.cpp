// https://projecteuler.net/problem=26
// Answer is: 983

#include <iostream>

using namespace std;

class FractionOfOne {
    public:
        void divide_by(int divisor) {
            fill_decimal_part_with_zeros();
            int dividend = 10;
            int precision = decimal_part_length();
            for (int i = 0; i < precision; i++) {
                if (dividend >= divisor) {
                    decimal_part[i] = (dividend - dividend % divisor) / divisor;
                    dividend = (dividend - divisor * decimal_part[i]) * 10;
                    if (dividend == 0) break;
                    continue;
                }
                dividend *= 10;
            }
        }

        // for cycles longer than 5 digits
        int recurring_cycle_length() {
            int precision = decimal_part_length();
            int cycle_length = 0;
            for (int start = 0; start < precision - 2 * start; start++) {
                for (int length = 6; length < (precision - 2 * start) / 2; length++) {
                    if (is_there_cycle(start, length)) {
                        cycle_length = length;
                        return cycle_length;
                    }
                }
            }
            return cycle_length;
        }

    private:
        int decimal_part[2000];

        void fill_decimal_part_with_zeros() {
            int precision = decimal_part_length();
            for (int i = 0; i < precision; i++) {
                decimal_part[i] = 0;
            }
        }

        bool is_there_cycle(int start_pos, int length) {
            bool result = true;
            int cycle[length];
            for (int i = start_pos; i < length + start_pos; i++) {
                cycle[i - start_pos] = decimal_part[i];
            }
            for(int i = start_pos; i < length + start_pos; i++) {
                if (decimal_part[i + length] != cycle[i - start_pos]) {
                    result = false;
                    break;
                }
            }
            return result;
        }

        int decimal_part_length() {
            return sizeof(decimal_part) / sizeof(decimal_part[0]);
        }
};

int main() {
    int divisor, max_length = 6;
    for (int i = 1; i < 1000; i++) {
        FractionOfOne fraction;
        fraction.divide_by(i);
        if (fraction.recurring_cycle_length() > max_length) {
            max_length = fraction.recurring_cycle_length();
            divisor = i;
        }
    }
    cout << divisor;
}
