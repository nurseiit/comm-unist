
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (84,839)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(405);
    ref.push(405);

//len_list: 1
//==============================


//==============================
    submit.push(8101);
    ref.push(8101);

//len_list: 2
//==============================


//==============================
    submit.push(158);
    ref.push(158);

//len_list: 3
//==============================


//==============================
    submit.push(4962);
    ref.push(4962);

//len_list: 4
//==============================


//==============================
    submit.push(9147);
    ref.push(9147);

//len_list: 5
//==============================


//==============================
    submit.push(5793);
    ref.push(5793);

//len_list: 6
//==============================


//==============================
    submit.push(3293);
    ref.push(3293);

//len_list: 7
//==============================


//==============================
    submit.push(5673);
    ref.push(5673);

//len_list: 8
//==============================


//==============================
    submit.push(7122);
    ref.push(7122);

//len_list: 9
//==============================


//==============================
    submit.push(1175);
    ref.push(1175);

//len_list: 10
//==============================


//==============================
    submit.push(914);
    ref.push(914);

//len_list: 11
//==============================


//==============================
    submit.push(1472);
    ref.push(1472);

//len_list: 12
//==============================


//==============================
    submit.push(4206);
    ref.push(4206);

//len_list: 13
//==============================


//==============================
    submit.push(3172);
    ref.push(3172);

//len_list: 14
//==============================


//==============================
    submit.push(8034);
    ref.push(8034);

//len_list: 15
//==============================


//==============================
    submit.push(912);
    ref.push(912);

//len_list: 16
//==============================


//==============================
    submit.push(9325);
    ref.push(9325);

//len_list: 17
//==============================


//==============================
    submit.push(296);
    ref.push(296);

//len_list: 18
//==============================


//==============================
    submit.push(9507);
    ref.push(9507);

//len_list: 19
//==============================


//==============================
    submit.push(5703);
    ref.push(5703);

//len_list: 20
//==============================


//==============================
    submit.push(7652);
    ref.push(7652);

//len_list: 21
//==============================


//==============================
    submit.push(3980);
    ref.push(3980);

//len_list: 22
//==============================


//==============================
    submit.push(6232);
    ref.push(6232);

//len_list: 23
//==============================


//==============================
    submit.push(1765);
    ref.push(1765);

//len_list: 24
//==============================


//==============================
    submit.push(2963);
    ref.push(2963);

//len_list: 25
//==============================


//==============================
    submit.push(4815);
    ref.push(4815);

//len_list: 26
//==============================


//==============================
    submit.push(6355);
    ref.push(6355);

//len_list: 27
//==============================


//==============================
    submit.push(2687);
    ref.push(2687);

//len_list: 28
//==============================


//==============================
    submit.push(3024);
    ref.push(3024);

//len_list: 29
//==============================


//==============================
    submit.push(3122);
    ref.push(3122);

//len_list: 30
//==============================


//==============================
    submit.push(8186);
    ref.push(8186);

//len_list: 31
//==============================


//==============================
    submit.push(6458);
    ref.push(6458);

//len_list: 32
//==============================


//==============================
    submit.push(9286);
    ref.push(9286);

//len_list: 33
//==============================


//==============================
    submit.push(1595);
    ref.push(1595);

//len_list: 34
//==============================


//==============================
    submit.push(279);
    ref.push(279);

//len_list: 35
//==============================


//==============================
    submit.push(4104);
    ref.push(4104);

//len_list: 36
//==============================


//==============================
    submit.push(5837);
    ref.push(5837);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(6962);
    ref.push(6962);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(451);
    ref.push(451);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3723);
    ref.push(3723);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(9658);
    ref.push(9658);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(7806);
    ref.push(7806);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(2758);
    ref.push(2758);

//len_list: 39
//==============================


//==============================
    submit.push(8719);
    ref.push(8719);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(1635);
    ref.push(1635);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(3992);
    ref.push(3992);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(9362);
    ref.push(9362);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(3713);
    ref.push(3713);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(6192);
    ref.push(6192);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(9396);
    ref.push(9396);

//len_list: 39
//==============================


//==============================
    submit.push(1257);
    ref.push(1257);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(8494);
    ref.push(8494);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(5363);
    ref.push(5363);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(6663);
    ref.push(6663);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(6655);
    ref.push(6655);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(9371);
    ref.push(9371);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(7831);
    ref.push(7831);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(5564);
    ref.push(5564);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(4439);
    ref.push(4439);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(4729);
    ref.push(4729);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(5950);
    ref.push(5950);

//len_list: 36
//==============================


//==============================
    submit.push(5594);
    ref.push(5594);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(2931);
    ref.push(2931);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(998);
    ref.push(998);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(6818);
    ref.push(6818);

//len_list: 34
//==============================


//==============================
    submit.push(2390);
    ref.push(2390);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(1669);
    ref.push(1669);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(4518);
    ref.push(4518);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(6317);
    ref.push(6317);

//len_list: 34
//==============================


//==============================
    submit.push(8859);
    ref.push(8859);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(8054);
    ref.push(8054);

//len_list: 36
//==============================


//==============================
    submit.push(9381);
    ref.push(9381);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(8522);
    ref.push(8522);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(6200);
    ref.push(6200);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(5680);
    ref.push(5680);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2643);
    ref.push(2643);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(6462);
    ref.push(6462);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(8335);
    ref.push(8335);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(4621);
    ref.push(4621);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.push(7025);
    ref.push(7025);

//len_list: 40
//==============================


//==============================
    submit.push(2378);
    ref.push(2378);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(7815);
    ref.push(7815);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(7970);
    ref.push(7970);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(8656);
    ref.push(8656);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(5977);
    ref.push(5977);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(9034);
    ref.push(9034);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(6380);
    ref.push(6380);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(7207);
    ref.push(7207);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(8277);
    ref.push(8277);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3485);
    ref.push(3485);

//len_list: 40
//==============================


//==============================
    submit.push(6552);
    ref.push(6552);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(7641);
    ref.push(7641);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(59);
    ref.push(59);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(6505);
    ref.push(6505);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(139);
    ref.push(139);

//len_list: 43
//==============================


//==============================
    submit.push(3803);
    ref.push(3803);

//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    submit.push(8289);
    ref.push(8289);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    submit.push(7203);
    ref.push(7203);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(9928);
    ref.push(9928);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(2337);
    ref.push(2337);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(2741);
    ref.push(2741);

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(829);
    ref.push(829);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(2726);
    ref.push(2726);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(2148);
    ref.push(2148);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(5980);
    ref.push(5980);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(6748);
    ref.push(6748);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.push(9928);
    ref.push(9928);

//len_list: 49
//==============================


//==============================
    submit.push(9981);
    ref.push(9981);

//len_list: 50
//==============================


//==============================
    submit.push(6968);
    ref.push(6968);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.push(1040);
    ref.push(1040);

//len_list: 49
//==============================


//==============================
    submit.push(4262);
    ref.push(4262);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(6537);
    ref.push(6537);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(1105);
    ref.push(1105);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(35);
    ref.push(35);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(8346);
    ref.push(8346);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(431);
    ref.push(431);

//len_list: 50
//==============================


//==============================
    submit.push(3598);
    ref.push(3598);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(5162);
    ref.push(5162);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(7278);
    ref.push(7278);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.push(2305);
    ref.push(2305);

//len_list: 48
//==============================


//==============================
    submit.push(3943);
    ref.push(3943);

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.push(5550);
    ref.push(5550);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(2679);
    ref.push(2679);

//len_list: 49
//==============================


//==============================
    submit.push(4087);
    ref.push(4087);

//len_list: 50
//==============================


//==============================
    submit.push(601);
    ref.push(601);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(1069);
    ref.push(1069);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(3935);
    ref.push(3935);

//len_list: 53
//==============================


//==============================
    submit.push(4740);
    ref.push(4740);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(9952);
    ref.push(9952);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(3851);
    ref.push(3851);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(6322);
    ref.push(6322);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(9776);
    ref.push(9776);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(7244);
    ref.push(7244);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(5375);
    ref.push(5375);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(4176);
    ref.push(4176);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(6570);
    ref.push(6570);

//len_list: 51
//==============================


//==============================
    submit.push(7298);
    ref.push(7298);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(654);
    ref.push(654);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(9822);
    ref.push(9822);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(3468);
    ref.push(3468);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.push(4192);
    ref.push(4192);

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(9902);
    ref.push(9902);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(1166);
    ref.push(1166);

//len_list: 49
//==============================


//==============================
    submit.push(8099);
    ref.push(8099);

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(1413);
    ref.push(1413);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(7221);
    ref.push(7221);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(2539);
    ref.push(2539);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(8845);
    ref.push(8845);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(2527);
    ref.push(2527);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(2705);
    ref.push(2705);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(7161);
    ref.push(7161);

//len_list: 52
//==============================


//==============================
    submit.push(4292);
    ref.push(4292);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(6476);
    ref.push(6476);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(4985);
    ref.push(4985);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(6734);
    ref.push(6734);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9497);
    ref.push(9497);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(3205);
    ref.push(3205);

//len_list: 53
//==============================


//==============================
    submit.push(2128);
    ref.push(2128);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(4793);
    ref.push(4793);

//len_list: 54
//==============================


//==============================
    submit.push(5937);
    ref.push(5937);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(1245);
    ref.push(1245);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(851);
    ref.push(851);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(2647);
    ref.push(2647);

//len_list: 53
//==============================


//==============================
    submit.push(1434);
    ref.push(1434);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(9344);
    ref.push(9344);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(5716);
    ref.push(5716);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(6827);
    ref.push(6827);

//len_list: 55
//==============================


//==============================
    submit.push(7692);
    ref.push(7692);

//len_list: 56
//==============================


//==============================
    submit.push(1479);
    ref.push(1479);

//len_list: 57
//==============================


//==============================
    submit.push(4278);
    ref.push(4278);

//len_list: 58
//==============================


//==============================
    submit.push(6889);
    ref.push(6889);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(7302);
    ref.push(7302);

//len_list: 60
//==============================


//==============================
    submit.push(9664);
    ref.push(9664);

//len_list: 61
//==============================


//==============================
    submit.push(9193);
    ref.push(9193);

//len_list: 62
//==============================


//==============================
    submit.push(3914);
    ref.push(3914);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(1069);
    ref.push(1069);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(6900);
    ref.push(6900);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(805);
    ref.push(805);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(7935);
    ref.push(7935);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(5932);
    ref.push(5932);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(7880);
    ref.push(7880);

//len_list: 59
//==============================


//==============================
    submit.push(2191);
    ref.push(2191);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(3803);
    ref.push(3803);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(2053);
    ref.push(2053);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9162);
    ref.push(9162);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(5566);
    ref.push(5566);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1094);
    ref.push(1094);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(9549);
    ref.push(9549);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(2240);
    ref.push(2240);

//len_list: 60
//==============================


//==============================
    submit.push(3363);
    ref.push(3363);

//len_list: 61
//==============================


//==============================
    submit.push(1650);
    ref.push(1650);

//len_list: 62
//==============================


//==============================
    submit.push(9453);
    ref.push(9453);

//len_list: 63
//==============================


//==============================
    submit.push(5940);
    ref.push(5940);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(8012);
    ref.push(8012);

//len_list: 63
//==============================


//==============================
    submit.push(9903);
    ref.push(9903);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(2925);
    ref.push(2925);

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(5205);
    ref.push(5205);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(9429);
    ref.push(9429);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(2462);
    ref.push(2462);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(907);
    ref.push(907);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(6974);
    ref.push(6974);

//len_list: 57
//==============================


//==============================
    submit.push(9915);
    ref.push(9915);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(4392);
    ref.push(4392);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(958);
    ref.push(958);

//len_list: 57
//==============================


//==============================
    submit.push(6709);
    ref.push(6709);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


}
