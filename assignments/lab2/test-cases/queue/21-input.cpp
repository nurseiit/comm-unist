
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (88,1681)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(88)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(4145);
    ref.push(4145);

//len_list: 1
//==============================


//==============================
    submit.push(6627);
    ref.push(6627);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(3850);
    ref.push(3850);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(6574);
    ref.push(6574);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(5733);
    ref.push(5733);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6272);
    ref.push(6272);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(7304);
    ref.push(7304);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(3636);
    ref.push(3636);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(3956);
    ref.push(3956);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(1524);
    ref.push(1524);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(4491);
    ref.push(4491);

//len_list: 2
//==============================


//==============================
    submit.push(7359);
    ref.push(7359);

//len_list: 3
//==============================


//==============================
    submit.push(4868);
    ref.push(4868);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5153);
    ref.push(5153);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4072);
    ref.push(4072);

//len_list: 5
//==============================


//==============================
    submit.push(433);
    ref.push(433);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2030);
    ref.push(2030);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(7443);
    ref.push(7443);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(4197);
    ref.push(4197);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(3414);
    ref.push(3414);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(4406);
    ref.push(4406);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9002);
    ref.push(9002);

//len_list: 4
//==============================


//==============================
    submit.push(2170);
    ref.push(2170);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4965);
    ref.push(4965);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2283);
    ref.push(2283);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4678);
    ref.push(4678);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6310);
    ref.push(6310);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5064);
    ref.push(5064);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3548);
    ref.push(3548);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(4855);
    ref.push(4855);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(3426);
    ref.push(3426);

//len_list: 2
//==============================


//==============================
    submit.push(8936);
    ref.push(8936);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(7357);
    ref.push(7357);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(6377);
    ref.push(6377);

//len_list: 2
//==============================


//==============================
    submit.push(8598);
    ref.push(8598);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(2849);
    ref.push(2849);

//len_list: 2
//==============================


//==============================
    submit.push(579);
    ref.push(579);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4318);
    ref.push(4318);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4984);
    ref.push(4984);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5531);
    ref.push(5531);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(821);
    ref.push(821);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4339);
    ref.push(4339);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(7016);
    ref.push(7016);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3888);
    ref.push(3888);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1095);
    ref.push(1095);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1849);
    ref.push(1849);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(7656);
    ref.push(7656);

//len_list: 3
//==============================


//==============================
    submit.push(8692);
    ref.push(8692);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(191);
    ref.push(191);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4978);
    ref.push(4978);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(636);
    ref.push(636);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(9885);
    ref.push(9885);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3885);
    ref.push(3885);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6770);
    ref.push(6770);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(9040);
    ref.push(9040);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(4703);
    ref.push(4703);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(5364);
    ref.push(5364);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7369);
    ref.push(7369);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(7881);
    ref.push(7881);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8598);
    ref.push(8598);

//len_list: 5
//==============================


//==============================
    submit.push(3036);
    ref.push(3036);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4490);
    ref.push(4490);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5461);
    ref.push(5461);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(7230);
    ref.push(7230);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4713);
    ref.push(4713);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3127);
    ref.push(3127);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(417);
    ref.push(417);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7205);
    ref.push(7205);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(8127);
    ref.push(8127);

//len_list: 5
//==============================


//==============================
    submit.push(2522);
    ref.push(2522);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(6052);
    ref.push(6052);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(4715);
    ref.push(4715);

//len_list: 7
//==============================


//==============================
    submit.push(4402);
    ref.push(4402);

//len_list: 8
//==============================


//==============================
    submit.push(5877);
    ref.push(5877);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(8006);
    ref.push(8006);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7136);
    ref.push(7136);

//len_list: 6
//==============================


//==============================
    submit.push(3206);
    ref.push(3206);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4692);
    ref.push(4692);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(1650);
    ref.push(1650);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(776);
    ref.push(776);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(2856);
    ref.push(2856);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(794);
    ref.push(794);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(269);
    ref.push(269);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(1089);
    ref.push(1089);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2036);
    ref.push(2036);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(4052);
    ref.push(4052);

//len_list: 3
//==============================


//==============================
    submit.push(5686);
    ref.push(5686);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3692);
    ref.push(3692);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3344);
    ref.push(3344);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(901);
    ref.push(901);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3892);
    ref.push(3892);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(592);
    ref.push(592);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(6387);
    ref.push(6387);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(3651);
    ref.push(3651);

//len_list: 4
//==============================


//==============================
    submit.push(12);
    ref.push(12);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(9724);
    ref.push(9724);

//len_list: 6
//==============================


//==============================
    submit.push(655);
    ref.push(655);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(6550);
    ref.push(6550);

//len_list: 7
//==============================


//==============================
    submit.push(3268);
    ref.push(3268);

//len_list: 8
//==============================


//==============================
    submit.push(8094);
    ref.push(8094);

//len_list: 9
//==============================


//==============================
    submit.push(4693);
    ref.push(4693);

//len_list: 10
//==============================


//==============================
    submit.push(9976);
    ref.push(9976);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1423);
    ref.push(1423);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9024);
    ref.push(9024);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(4826);
    ref.push(4826);

//len_list: 7
//==============================


//==============================
    submit.push(7226);
    ref.push(7226);

//len_list: 8
//==============================


//==============================
    submit.push(9380);
    ref.push(9380);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4462);
    ref.push(4462);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(1398);
    ref.push(1398);

//len_list: 10
//==============================


//==============================
    submit.push(2905);
    ref.push(2905);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(1580);
    ref.push(1580);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(194);
    ref.push(194);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(3193);
    ref.push(3193);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(718);
    ref.push(718);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(1418);
    ref.push(1418);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(8994);
    ref.push(8994);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(2536);
    ref.push(2536);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3841);
    ref.push(3841);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(2102);
    ref.push(2102);

//len_list: 5
//==============================


//==============================
    submit.push(5833);
    ref.push(5833);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(8024);
    ref.push(8024);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3779);
    ref.push(3779);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(1562);
    ref.push(1562);

//len_list: 7
//==============================


//==============================
    submit.push(1618);
    ref.push(1618);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(3290);
    ref.push(3290);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(806);
    ref.push(806);

//len_list: 8
//==============================


//==============================
    submit.push(2280);
    ref.push(2280);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8738);
    ref.push(8738);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(6390);
    ref.push(6390);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(5490);
    ref.push(5490);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(8957);
    ref.push(8957);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(9044);
    ref.push(9044);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2655);
    ref.push(2655);

//len_list: 6
//==============================


//==============================
    submit.push(7678);
    ref.push(7678);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(3910);
    ref.push(3910);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(4512);
    ref.push(4512);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(717);
    ref.push(717);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(7415);
    ref.push(7415);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(5786);
    ref.push(5786);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(5021);
    ref.push(5021);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(1954);
    ref.push(1954);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(189);
    ref.push(189);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(6896);
    ref.push(6896);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(7340);
    ref.push(7340);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(9019);
    ref.push(9019);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(2988);
    ref.push(2988);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(2833);
    ref.push(2833);

//len_list: 2
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 1
//==============================


//==============================
    submit.push(3619);
    ref.push(3619);

//len_list: 2
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 2
//==============================


//==============================
    submit.push(1008);
    ref.push(1008);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5684);
    ref.push(5684);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1874);
    ref.push(1874);

//len_list: 5
//==============================


//==============================
    submit.push(4377);
    ref.push(4377);

//len_list: 6
//==============================


//==============================
    submit.push(3072);
    ref.push(3072);

//len_list: 7
//==============================


//==============================
    submit.push(9330);
    ref.push(9330);

//len_list: 8
//==============================


//==============================
    submit.push(4026);
    ref.push(4026);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3825);
    ref.push(3825);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(9119);
    ref.push(9119);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(5816);
    ref.push(5816);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9712);
    ref.push(9712);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(7849);
    ref.push(7849);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9853);
    ref.push(9853);

//len_list: 8
//==============================


//==============================
    submit.push(3513);
    ref.push(3513);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(5759);
    ref.push(5759);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(731);
    ref.push(731);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(5620);
    ref.push(5620);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7799);
    ref.push(7799);

//len_list: 11
//==============================


//==============================
    submit.push(2204);
    ref.push(2204);

//len_list: 12
//==============================


//==============================
    submit.push(5633);
    ref.push(5633);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(4556);
    ref.push(4556);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(1214);
    ref.push(1214);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7286);
    ref.push(7286);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(7362);
    ref.push(7362);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(1424);
    ref.push(1424);

//len_list: 13
//==============================


//==============================
    submit.push(3853);
    ref.push(3853);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(1710);
    ref.push(1710);

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(6836);
    ref.push(6836);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(5126);
    ref.push(5126);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(8083);
    ref.push(8083);

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(1757);
    ref.push(1757);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(6604);
    ref.push(6604);

//len_list: 10
//==============================


//==============================
    submit.push(8003);
    ref.push(8003);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(2375);
    ref.push(2375);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7913);
    ref.push(7913);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(8367);
    ref.push(8367);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(727);
    ref.push(727);

//len_list: 10
//==============================


//==============================
    submit.push(5509);
    ref.push(5509);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(4664);
    ref.push(4664);

//len_list: 11
//==============================


//==============================
    submit.push(7154);
    ref.push(7154);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(8811);
    ref.push(8811);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(2647);
    ref.push(2647);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(9189);
    ref.push(9189);

//len_list: 7
//==============================


//==============================
    submit.push(1553);
    ref.push(1553);

//len_list: 8
//==============================


//==============================
    submit.push(704);
    ref.push(704);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(746);
    ref.push(746);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(6669);
    ref.push(6669);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5341);
    ref.push(5341);

//len_list: 6
//==============================


//==============================
    submit.push(9315);
    ref.push(9315);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(6660);
    ref.push(6660);

//len_list: 7
//==============================


//==============================
    submit.push(8592);
    ref.push(8592);

//len_list: 8
//==============================


//==============================
    submit.push(3080);
    ref.push(3080);

//len_list: 9
//==============================


//==============================
    submit.push(2830);
    ref.push(2830);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(3494);
    ref.push(3494);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(16);
    ref.push(16);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(86);
    ref.push(86);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(9076);
    ref.push(9076);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(3122);
    ref.push(3122);

//len_list: 14
//==============================


//==============================
    submit.push(2998);
    ref.push(2998);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(8436);
    ref.push(8436);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(1753);
    ref.push(1753);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(3525);
    ref.push(3525);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(2807);
    ref.push(2807);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(4122);
    ref.push(4122);

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6639);
    ref.push(6639);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(6150);
    ref.push(6150);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9985);
    ref.push(9985);

//len_list: 8
//==============================


//==============================
    submit.push(9269);
    ref.push(9269);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(6861);
    ref.push(6861);

//len_list: 9
//==============================


//==============================
    submit.push(6981);
    ref.push(6981);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(1052);
    ref.push(1052);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(515);
    ref.push(515);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(6213);
    ref.push(6213);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(1406);
    ref.push(1406);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(2409);
    ref.push(2409);

//len_list: 5
//==============================


//==============================
    submit.push(5084);
    ref.push(5084);

//len_list: 6
//==============================


//==============================
    submit.push(7296);
    ref.push(7296);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(472);
    ref.push(472);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8046);
    ref.push(8046);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(9601);
    ref.push(9601);

//len_list: 6
//==============================


//==============================
    submit.push(9043);
    ref.push(9043);

//len_list: 7
//==============================


//==============================
    submit.push(7700);
    ref.push(7700);

//len_list: 8
//==============================


//==============================
    submit.push(1156);
    ref.push(1156);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(7829);
    ref.push(7829);

//len_list: 3
//==============================


//==============================
    submit.push(7850);
    ref.push(7850);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(847);
    ref.push(847);

//len_list: 5
//==============================


//==============================
    submit.push(3970);
    ref.push(3970);

//len_list: 6
//==============================


//==============================
    submit.push(227);
    ref.push(227);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8110);
    ref.push(8110);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(242);
    ref.push(242);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8764);
    ref.push(8764);

//len_list: 6
//==============================


//==============================
    submit.push(6441);
    ref.push(6441);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(8551);
    ref.push(8551);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6930);
    ref.push(6930);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2514);
    ref.push(2514);

//len_list: 6
//==============================


//==============================
    submit.push(9390);
    ref.push(9390);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(8651);
    ref.push(8651);

//len_list: 8
//==============================


//==============================
    submit.push(2458);
    ref.push(2458);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(8186);
    ref.push(8186);

//len_list: 10
//==============================


//==============================
    submit.push(993);
    ref.push(993);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(4172);
    ref.push(4172);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(8536);
    ref.push(8536);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(5840);
    ref.push(5840);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(2014);
    ref.push(2014);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9562);
    ref.push(9562);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(1631);
    ref.push(1631);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(3176);
    ref.push(3176);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(9719);
    ref.push(9719);

//len_list: 13
//==============================


//==============================
    submit.push(1214);
    ref.push(1214);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7299);
    ref.push(7299);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(3703);
    ref.push(3703);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(4253);
    ref.push(4253);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(4762);
    ref.push(4762);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(3592);
    ref.push(3592);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(3612);
    ref.push(3612);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(4207);
    ref.push(4207);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(2601);
    ref.push(2601);

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(8993);
    ref.push(8993);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(6939);
    ref.push(6939);

//len_list: 16
//==============================


//==============================
    submit.push(7454);
    ref.push(7454);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(5851);
    ref.push(5851);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(6945);
    ref.push(6945);

//len_list: 18
//==============================


//==============================
    submit.push(5525);
    ref.push(5525);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9142);
    ref.push(9142);

//len_list: 19
//==============================


//==============================
    submit.push(8058);
    ref.push(8058);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(1111);
    ref.push(1111);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(8120);
    ref.push(8120);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(4642);
    ref.push(4642);

//len_list: 16
//==============================


//==============================
    submit.push(4665);
    ref.push(4665);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(3809);
    ref.push(3809);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1054);
    ref.push(1054);

//len_list: 19
//==============================


//==============================
    submit.push(5880);
    ref.push(5880);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4720);
    ref.push(4720);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(9993);
    ref.push(9993);

//len_list: 18
//==============================


//==============================
    submit.push(2519);
    ref.push(2519);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(3472);
    ref.push(3472);

//len_list: 17
//==============================


//==============================
    submit.push(933);
    ref.push(933);

//len_list: 18
//==============================


//==============================
    submit.push(3051);
    ref.push(3051);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(4658);
    ref.push(4658);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(9422);
    ref.push(9422);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4261);
    ref.push(4261);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(3153);
    ref.push(3153);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4615);
    ref.push(4615);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9636);
    ref.push(9636);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(7038);
    ref.push(7038);

//len_list: 13
//==============================


//==============================
    submit.push(1619);
    ref.push(1619);

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(9917);
    ref.push(9917);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(3393);
    ref.push(3393);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7339);
    ref.push(7339);

//len_list: 15
//==============================


//==============================
    submit.push(3867);
    ref.push(3867);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(9046);
    ref.push(9046);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2327);
    ref.push(2327);

//len_list: 8
//==============================


//==============================
    submit.push(3242);
    ref.push(3242);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3704);
    ref.push(3704);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(9257);
    ref.push(9257);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4253);
    ref.push(4253);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1668);
    ref.push(1668);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(820);
    ref.push(820);

//len_list: 9
//==============================


//==============================
    submit.push(8071);
    ref.push(8071);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(6181);
    ref.push(6181);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(4387);
    ref.push(4387);

//len_list: 10
//==============================


//==============================
    submit.push(478);
    ref.push(478);

//len_list: 11
//==============================


//==============================
    submit.push(637);
    ref.push(637);

//len_list: 12
//==============================


//==============================
    submit.push(4195);
    ref.push(4195);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(9560);
    ref.push(9560);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(4212);
    ref.push(4212);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(3742);
    ref.push(3742);

//len_list: 12
//==============================


//==============================
    submit.push(6934);
    ref.push(6934);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(8683);
    ref.push(8683);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(1807);
    ref.push(1807);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(510);
    ref.push(510);

//len_list: 15
//==============================


//==============================
    submit.push(9967);
    ref.push(9967);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(9837);
    ref.push(9837);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7697);
    ref.push(7697);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(6058);
    ref.push(6058);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(537);
    ref.push(537);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(3475);
    ref.push(3475);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(1287);
    ref.push(1287);

//len_list: 16
//==============================


//==============================
    submit.push(4648);
    ref.push(4648);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(2795);
    ref.push(2795);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(2825);
    ref.push(2825);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(27);
    ref.push(27);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(5180);
    ref.push(5180);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(6920);
    ref.push(6920);

//len_list: 17
//==============================


//==============================
    submit.push(8875);
    ref.push(8875);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(674);
    ref.push(674);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(8932);
    ref.push(8932);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9221);
    ref.push(9221);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(3185);
    ref.push(3185);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3275);
    ref.push(3275);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(1144);
    ref.push(1144);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(1376);
    ref.push(1376);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(2302);
    ref.push(2302);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(4974);
    ref.push(4974);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(1172);
    ref.push(1172);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(1132);
    ref.push(1132);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(3566);
    ref.push(3566);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(905);
    ref.push(905);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(2024);
    ref.push(2024);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(4878);
    ref.push(4878);

//len_list: 17
//==============================


//==============================
    submit.push(998);
    ref.push(998);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


}
