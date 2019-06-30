
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (188,1864)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(188)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(6231);
    ref.push(6231);

//len_list: 1
//==============================


//==============================
    submit.push(7974);
    ref.push(7974);

//len_list: 2
//==============================


//==============================
    submit.push(5948);
    ref.push(5948);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3092);
    ref.push(3092);

//len_list: 3
//==============================


//==============================
    submit.push(7151);
    ref.push(7151);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 5
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
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9767);
    ref.push(9767);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(7685);
    ref.push(7685);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(661);
    ref.push(661);

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
    submit.push(4327);
    ref.push(4327);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5269);
    ref.push(5269);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6880);
    ref.push(6880);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
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
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5409);
    ref.push(5409);

//len_list: 3
//==============================


//==============================
    submit.push(7327);
    ref.push(7327);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8883);
    ref.push(8883);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1662);
    ref.push(1662);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3876);
    ref.push(3876);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1873);
    ref.push(1873);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
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
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9775);
    ref.push(9775);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8281);
    ref.push(8281);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4657);
    ref.push(4657);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9230);
    ref.push(9230);

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
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(379);
    ref.push(379);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
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
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4897);
    ref.push(4897);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7345);
    ref.push(7345);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
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
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(3412);
    ref.push(3412);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
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
//num_require: 93
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
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(5471);
    ref.push(5471);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8529);
    ref.push(8529);

//len_list: 6
//==============================


//==============================
    submit.push(8249);
    ref.push(8249);

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
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(9217);
    ref.push(9217);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2793);
    ref.push(2793);

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
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
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
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(235);
    ref.push(235);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 115
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
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(4458);
    ref.push(4458);

//len_list: 7
//==============================


//==============================
    submit.push(7058);
    ref.push(7058);

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
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
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
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3388);
    ref.push(3388);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(4547);
    ref.push(4547);

//len_list: 8
//==============================


//==============================
    submit.push(1812);
    ref.push(1812);

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
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
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
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(4422);
    ref.push(4422);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(7169);
    ref.push(7169);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 128
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
//num_require: 129
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
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
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
//num_require: 134
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
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1481);
    ref.push(1481);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4383);
    ref.push(4383);

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
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9485);
    ref.push(9485);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
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
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
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
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6959);
    ref.push(6959);

//len_list: 4
//==============================


//==============================
    submit.push(2177);
    ref.push(2177);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6872);
    ref.push(6872);

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
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8573);
    ref.push(8573);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5894);
    ref.push(5894);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(967);
    ref.push(967);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8955);
    ref.push(8955);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3330);
    ref.push(3330);

//len_list: 6
//==============================


//==============================
    submit.push(78);
    ref.push(78);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
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
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(997);
    ref.push(997);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
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
//num_require: 182
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
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(9386);
    ref.push(9386);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
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
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(401);
    ref.push(401);

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
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8815);
    ref.push(8815);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8120);
    ref.push(8120);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8013);
    ref.push(8013);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1689);
    ref.push(1689);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
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
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
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
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2393);
    ref.push(2393);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5744);
    ref.push(5744);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8831);
    ref.push(8831);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2559);
    ref.push(2559);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2165);
    ref.push(2165);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4317);
    ref.push(4317);

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
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(549);
    ref.push(549);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3847);
    ref.push(3847);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 218
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
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(4440);
    ref.push(4440);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(6198);
    ref.push(6198);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 225
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8117);
    ref.push(8117);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(517);
    ref.push(517);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2785);
    ref.push(2785);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(5531);
    ref.push(5531);

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
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3485);
    ref.push(3485);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(1382);
    ref.push(1382);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
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
//num_require: 246
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
    submit.push(555);
    ref.push(555);

//len_list: 3
//==============================


//==============================
    submit.push(9785);
    ref.push(9785);

//len_list: 4
//==============================


//==============================
    submit.push(6418);
    ref.push(6418);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8947);
    ref.push(8947);

//len_list: 6
//==============================


//==============================
    submit.push(7640);
    ref.push(7640);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(7220);
    ref.push(7220);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(5395);
    ref.push(5395);

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
//num_require: 255
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
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4707);
    ref.push(4707);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(899);
    ref.push(899);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1396);
    ref.push(1396);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(5702);
    ref.push(5702);

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
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(2833);
    ref.push(2833);

//len_list: 9
//==============================


//==============================
    submit.push(1578);
    ref.push(1578);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(3868);
    ref.push(3868);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1942);
    ref.push(1942);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6845);
    ref.push(6845);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(2866);
    ref.push(2866);

//len_list: 12
//==============================


//==============================
    submit.push(1749);
    ref.push(1749);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
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
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(2265);
    ref.push(2265);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(8448);
    ref.push(8448);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(8968);
    ref.push(8968);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(8871);
    ref.push(8871);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(760);
    ref.push(760);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(3098);
    ref.push(3098);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(6947);
    ref.push(6947);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
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
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
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
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(4112);
    ref.push(4112);

//len_list: 10
//==============================


//==============================
    submit.push(9520);
    ref.push(9520);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(983);
    ref.push(983);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(2887);
    ref.push(2887);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(1902);
    ref.push(1902);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(5182);
    ref.push(5182);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7146);
    ref.push(7146);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(2066);
    ref.push(2066);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 327
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
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
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
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(8304);
    ref.push(8304);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 335
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
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(5719);
    ref.push(5719);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(3187);
    ref.push(3187);

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
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(24);
    ref.push(24);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9301);
    ref.push(9301);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
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
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 352
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
//num_require: 353
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
//num_require: 354
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
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(894);
    ref.push(894);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(4263);
    ref.push(4263);

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
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
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
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(5821);
    ref.push(5821);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(5724);
    ref.push(5724);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
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
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(2464);
    ref.push(2464);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
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
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
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
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
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
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(8794);
    ref.push(8794);

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
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2515);
    ref.push(2515);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6832);
    ref.push(6832);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4191);
    ref.push(4191);

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
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1942);
    ref.push(1942);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(8799);
    ref.push(8799);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
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
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8209);
    ref.push(8209);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
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
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1833);
    ref.push(1833);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9949);
    ref.push(9949);

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
    submit.push(6413);
    ref.push(6413);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(7714);
    ref.push(7714);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4960);
    ref.push(4960);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9990);
    ref.push(9990);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
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
    submit.push(9597);
    ref.push(9597);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7104);
    ref.push(7104);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(71);
    ref.push(71);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 411
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
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(7542);
    ref.push(7542);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7763);
    ref.push(7763);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(1971);
    ref.push(1971);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3402);
    ref.push(3402);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1080);
    ref.push(1080);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 424
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
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4878);
    ref.push(4878);

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
//num_require: 427
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
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(4078);
    ref.push(4078);

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
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5203);
    ref.push(5203);

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
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(6251);
    ref.push(6251);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
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
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 442
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
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(7173);
    ref.push(7173);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2088);
    ref.push(2088);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3926);
    ref.push(3926);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 455
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
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(5979);
    ref.push(5979);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
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
//num_require: 458
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
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9650);
    ref.push(9650);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9895);
    ref.push(9895);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8844);
    ref.push(8844);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2086);
    ref.push(2086);

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
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2254);
    ref.push(2254);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(9887);
    ref.push(9887);

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
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(426);
    ref.push(426);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1796);
    ref.push(1796);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(5227);
    ref.push(5227);

//len_list: 6
//==============================


//==============================
    submit.push(5684);
    ref.push(5684);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2775);
    ref.push(2775);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 478
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
//num_require: 479
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
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3940);
    ref.push(3940);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3503);
    ref.push(3503);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7801);
    ref.push(7801);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(8380);
    ref.push(8380);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 487
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 488
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
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(7875);
    ref.push(7875);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(8695);
    ref.push(8695);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8295);
    ref.push(8295);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 496
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
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7010);
    ref.push(7010);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
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
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1379);
    ref.push(1379);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1948);
    ref.push(1948);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(1582);
    ref.push(1582);

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
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3228);
    ref.push(3228);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
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
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(794);
    ref.push(794);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1331);
    ref.push(1331);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
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
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(3143);
    ref.push(3143);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 529
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
//num_require: 530
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
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3781);
    ref.push(3781);

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
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9217);
    ref.push(9217);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1841);
    ref.push(1841);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3513);
    ref.push(3513);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(8813);
    ref.push(8813);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 547
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
//num_require: 548
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
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1853);
    ref.push(1853);

//len_list: 3
//==============================


//==============================
    submit.push(5145);
    ref.push(5145);

//len_list: 4
//==============================


//==============================
    submit.push(4381);
    ref.push(4381);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(692);
    ref.push(692);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(8680);
    ref.push(8680);

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
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(3451);
    ref.push(3451);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(7654);
    ref.push(7654);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1397);
    ref.push(1397);

//len_list: 9
//==============================


//==============================
    submit.push(579);
    ref.push(579);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1774);
    ref.push(1774);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 567
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
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7013);
    ref.push(7013);

//len_list: 11
//==============================


//==============================
    submit.push(7668);
    ref.push(7668);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(823);
    ref.push(823);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(5532);
    ref.push(5532);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 575
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
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
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
    submit.push(2460);
    ref.push(2460);

//len_list: 8
//==============================


//==============================
    submit.push(6935);
    ref.push(6935);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 578
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
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 580
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
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(6561);
    ref.push(6561);

//len_list: 7
//==============================


//==============================
    submit.push(3683);
    ref.push(3683);

//len_list: 8
//==============================


//==============================
    submit.push(5997);
    ref.push(5997);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(781);
    ref.push(781);

//len_list: 10
//==============================


//==============================
    submit.push(6997);
    ref.push(6997);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 585
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
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(979);
    ref.push(979);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(7532);
    ref.push(7532);

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
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(4370);
    ref.push(4370);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 598
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
//num_require: 599
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
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2684);
    ref.push(2684);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 604
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
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 611
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
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(8353);
    ref.push(8353);

//len_list: 7
//==============================


//==============================
    submit.push(2630);
    ref.push(2630);

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
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3807);
    ref.push(3807);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(1745);
    ref.push(1745);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(4399);
    ref.push(4399);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 638
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
    submit.push(7179);
    ref.push(7179);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(6660);
    ref.push(6660);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(5662);
    ref.push(5662);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(4091);
    ref.push(4091);

//len_list: 8
//==============================


//==============================
    submit.push(9483);
    ref.push(9483);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(6813);
    ref.push(6813);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7182);
    ref.push(7182);

//len_list: 11
//==============================


//==============================
    submit.push(1845);
    ref.push(1845);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 659
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
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6358);
    ref.push(6358);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6306);
    ref.push(6306);

//len_list: 12
//==============================


//==============================
    submit.push(5022);
    ref.push(5022);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(5986);
    ref.push(5986);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 678
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
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(9712);
    ref.push(9712);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(411);
    ref.push(411);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(9922);
    ref.push(9922);

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(7867);
    ref.push(7867);

//len_list: 14
//==============================


//==============================
    submit.push(19);
    ref.push(19);

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
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7294);
    ref.push(7294);

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
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 711
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
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 713
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
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(731);
    ref.push(731);

//len_list: 12
//==============================


//==============================
    submit.push(9535);
    ref.push(9535);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(1011);
    ref.push(1011);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 717
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 718
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
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(5633);
    ref.push(5633);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(5694);
    ref.push(5694);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 724
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
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 726
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
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(6382);
    ref.push(6382);

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
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(6346);
    ref.push(6346);

//len_list: 9
//==============================


//==============================
    submit.push(4888);
    ref.push(4888);

//len_list: 10
//==============================


//==============================
    submit.push(9067);
    ref.push(9067);

//len_list: 11
//==============================


//==============================
    submit.push(2811);
    ref.push(2811);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(8451);
    ref.push(8451);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(5870);
    ref.push(5870);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(711);
    ref.push(711);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(8968);
    ref.push(8968);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(7691);
    ref.push(7691);

//len_list: 14
//==============================


//==============================
    submit.push(6295);
    ref.push(6295);

//len_list: 15
//==============================


//==============================
    submit.push(4446);
    ref.push(4446);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 745
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
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(7046);
    ref.push(7046);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(8127);
    ref.push(8127);

//len_list: 16
//==============================


//==============================
    submit.push(7225);
    ref.push(7225);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(668);
    ref.push(668);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7545);
    ref.push(7545);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 753
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
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(6549);
    ref.push(6549);

//len_list: 17
//==============================


//==============================
    submit.push(701);
    ref.push(701);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(3729);
    ref.push(3729);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(7585);
    ref.push(7585);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 772
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
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
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
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 777
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
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7088);
    ref.push(7088);

//len_list: 15
//==============================


//==============================
    submit.push(280);
    ref.push(280);

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
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(8381);
    ref.push(8381);

//len_list: 16
//==============================


//==============================
    submit.push(8996);
    ref.push(8996);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 789
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
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(4917);
    ref.push(4917);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(8186);
    ref.push(8186);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(7669);
    ref.push(7669);

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
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(3417);
    ref.push(3417);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1232);
    ref.push(1232);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 805
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
    submit.push(4939);
    ref.push(4939);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(6996);
    ref.push(6996);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(5701);
    ref.push(5701);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(9844);
    ref.push(9844);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 816
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(662);
    ref.push(662);

//len_list: 17
//==============================


//==============================
    submit.push(8422);
    ref.push(8422);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1568);
    ref.push(1568);

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
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(5341);
    ref.push(5341);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(5678);
    ref.push(5678);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(752);
    ref.push(752);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(8030);
    ref.push(8030);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(2416);
    ref.push(2416);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(4166);
    ref.push(4166);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(7742);
    ref.push(7742);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(8439);
    ref.push(8439);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(166);
    ref.push(166);

//len_list: 22
//==============================


//==============================
    submit.push(6668);
    ref.push(6668);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(8378);
    ref.push(8378);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(5669);
    ref.push(5669);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(8685);
    ref.push(8685);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(6467);
    ref.push(6467);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(3866);
    ref.push(3866);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(9669);
    ref.push(9669);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(1790);
    ref.push(1790);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(2753);
    ref.push(2753);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(7311);
    ref.push(7311);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(5179);
    ref.push(5179);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(1562);
    ref.push(1562);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(3283);
    ref.push(3283);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(9910);
    ref.push(9910);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(2190);
    ref.push(2190);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(4435);
    ref.push(4435);

//len_list: 24
//==============================


//==============================
    submit.push(3482);
    ref.push(3482);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 906
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(2275);
    ref.push(2275);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 917
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 921
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
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(1299);
    ref.push(1299);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 927
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
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(1872);
    ref.push(1872);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(7275);
    ref.push(7275);

//len_list: 17
//==============================


//==============================
    submit.push(5114);
    ref.push(5114);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
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
    submit.push(327);
    ref.push(327);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(1460);
    ref.push(1460);

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
//num_require: 932
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
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(645);
    ref.push(645);

//len_list: 18
//==============================


//==============================
    submit.push(152);
    ref.push(152);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(7173);
    ref.push(7173);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 944
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
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9708);
    ref.push(9708);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 949
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 952
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(4062);
    ref.push(4062);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(9476);
    ref.push(9476);

//len_list: 17
//==============================


//==============================
    submit.push(3823);
    ref.push(3823);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(7553);
    ref.push(7553);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(1631);
    ref.push(1631);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(4465);
    ref.push(4465);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 960
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
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 965
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
//num_require: 966
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(3736);
    ref.push(3736);

//len_list: 16
//==============================


//==============================
    submit.push(1033);
    ref.push(1033);

//len_list: 17
//==============================


//==============================
    submit.push(4866);
    ref.push(4866);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(6054);
    ref.push(6054);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1536);
    ref.push(1536);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 972
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
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(4765);
    ref.push(4765);

//len_list: 19
//==============================


//==============================
    submit.push(8815);
    ref.push(8815);

//len_list: 20
//==============================


//==============================
    submit.push(6947);
    ref.push(6947);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(2236);
    ref.push(2236);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(9347);
    ref.push(9347);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(8695);
    ref.push(8695);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(1860);
    ref.push(1860);

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
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 989
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
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(131);
    ref.push(131);

//len_list: 18
//==============================


//==============================
    submit.push(9661);
    ref.push(9661);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1008);
    ref.push(1008);

//len_list: 20
//==============================


//==============================
    submit.push(849);
    ref.push(849);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(1086);
    ref.push(1086);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(6205);
    ref.push(6205);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(2129);
    ref.push(2129);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(4682);
    ref.push(4682);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1017
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1018
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1019
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1020
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(5880);
    ref.push(5880);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1021
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1022
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(4463);
    ref.push(4463);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1023
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(6935);
    ref.push(6935);

//len_list: 23
//==============================


//==============================
    submit.push(6628);
    ref.push(6628);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1024
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1025
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1026
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1027
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1028
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1029
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1030
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1031
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(1080);
    ref.push(1080);

//len_list: 24
//==============================


//==============================
    submit.push(6419);
    ref.push(6419);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1032
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(4257);
    ref.push(4257);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1033
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1034
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(2709);
    ref.push(2709);

//len_list: 25
//==============================


//==============================
    submit.push(6460);
    ref.push(6460);

//len_list: 26
//==============================


//==============================
    submit.push(8354);
    ref.push(8354);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1035
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1036
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1037
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1038
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1039
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(8576);
    ref.push(8576);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1040
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(8628);
    ref.push(8628);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1041
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1042
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(9118);
    ref.push(9118);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1043
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1044
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1045
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1046
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(1554);
    ref.push(1554);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1047
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1048
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1049
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1050
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(6291);
    ref.push(6291);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1051
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(813);
    ref.push(813);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1052
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4054);
    ref.push(4054);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1053
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1054
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1055
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1056
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1057
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1058
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(4067);
    ref.push(4067);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1059
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1060
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(9733);
    ref.push(9733);

//len_list: 28
//==============================


//==============================
    submit.push(5332);
    ref.push(5332);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1061
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1062
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1063
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(8749);
    ref.push(8749);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1064
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(5046);
    ref.push(5046);

//len_list: 29
//==============================


//==============================
    submit.push(5448);
    ref.push(5448);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1065
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1066
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(7020);
    ref.push(7020);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1067
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7574);
    ref.push(7574);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1068
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1069
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1070
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1071
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1072
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9149);
    ref.push(9149);

//len_list: 33
//==============================


//==============================
    submit.push(981);
    ref.push(981);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1073
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1074
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(6322);
    ref.push(6322);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1075
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1076
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1077
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1078
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(7687);
    ref.push(7687);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1079
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1080
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(1900);
    ref.push(1900);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1081
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(8903);
    ref.push(8903);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1082
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(9964);
    ref.push(9964);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1083
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1084
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1085
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1086
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1087
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1088
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1089
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1090
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1091
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1092
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1093
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1094
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1095
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(6710);
    ref.push(6710);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1096
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1097
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1098
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(2276);
    ref.push(2276);

//len_list: 35
//==============================


//==============================
    submit.push(1261);
    ref.push(1261);

//len_list: 36
//==============================


//==============================
    submit.push(3164);
    ref.push(3164);

//len_list: 37
//==============================


//==============================
    submit.push(9832);
    ref.push(9832);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1099
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(1067);
    ref.push(1067);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1100
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1101
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1102
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1103
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1104
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1105
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1106
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(1031);
    ref.push(1031);

//len_list: 39
//==============================


//==============================
    submit.push(7914);
    ref.push(7914);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1107
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(4448);
    ref.push(4448);

//len_list: 41
//==============================


//==============================
    submit.push(7770);
    ref.push(7770);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1108
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1109
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1110
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1111
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1112
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1113
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1114
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1115
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1116
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1117
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1118
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1119
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(7878);
    ref.push(7878);

//len_list: 40
//==============================


//==============================
    submit.push(3944);
    ref.push(3944);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1120
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1121
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1122
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1123
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1124
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1125
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1126
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1127
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1128
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1129
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1130
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(3289);
    ref.push(3289);

//len_list: 38
//==============================


//==============================
    submit.push(3658);
    ref.push(3658);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1131
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1132
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1133
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(9313);
    ref.push(9313);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1134
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(1299);
    ref.push(1299);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1135
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1136
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1137
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1138
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1139
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1140
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1141
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1142
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1143
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(328);
    ref.push(328);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


}
