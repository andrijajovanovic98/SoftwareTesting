#include <iostream>
#include "class.hpp"
#include <gtest/gtest.h>

TEST(CalculatorTest, AddFunction) {
    EXPECT_EQ(5, Calculator::add(2,3));
    EXPECT_EQ(6, Calculator::add(2,4));
    EXPECT_EQ(10, Calculator::add(7,3));
}

TEST(CalculatorTest, SubstractFunction) {
    EXPECT_EQ(-1, Calculator::substract(2,3));
    EXPECT_EQ(-2, Calculator::substract(2,4));
    EXPECT_EQ(4, Calculator::substract(7,3));
}

TEST(CalculatorTest, MultiplyFunction) {
    EXPECT_EQ(6, Calculator::multiply(2,3));
    EXPECT_EQ(8, Calculator::multiply(2,4));
    EXPECT_EQ(21, Calculator::multiply(7,3 + 1));
}


int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
