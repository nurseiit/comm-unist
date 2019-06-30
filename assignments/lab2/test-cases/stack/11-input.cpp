
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (96,495)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(3228);
    ref.push(3228);

//len_list: 1
//==============================


//==============================
    submit.push(902);
    ref.push(902);

//len_list: 2
//==============================


//==============================
    submit.push(9199);
    ref.push(9199);

//len_list: 3
//==============================


//==============================
    submit.push(2904);
    ref.push(2904);

//len_list: 4
//==============================


//==============================
    submit.push(4196);
    ref.push(4196);

//len_list: 5
//==============================


//==============================
    submit.push(248);
    ref.push(248);

//len_list: 6
//==============================


//==============================
    submit.push(8435);
    ref.push(8435);

//len_list: 7
//==============================


//==============================
    submit.push(2206);
    ref.push(2206);

//len_list: 8
//==============================


//==============================
    submit.push(7840);
    ref.push(7840);

//len_list: 9
//==============================


//==============================
    submit.push(7861);
    ref.push(7861);

//len_list: 10
//==============================


//==============================
    submit.push(430);
    ref.push(430);

//len_list: 11
//==============================


//==============================
    submit.push(3260);
    ref.push(3260);

//len_list: 12
//==============================


//==============================
    submit.push(4179);
    ref.push(4179);

//len_list: 13
//==============================


//==============================
    submit.push(991);
    ref.push(991);

//len_list: 14
//==============================


//==============================
    submit.push(7325);
    ref.push(7325);

//len_list: 15
//==============================


//==============================
    submit.push(7366);
    ref.push(7366);

//len_list: 16
//==============================


//==============================
    submit.push(1212);
    ref.push(1212);

//len_list: 17
//==============================


//==============================
    submit.push(4780);
    ref.push(4780);

//len_list: 18
//==============================


//==============================
    submit.push(7202);
    ref.push(7202);

//len_list: 19
//==============================


//==============================
    submit.push(7087);
    ref.push(7087);

//len_list: 20
//==============================


//==============================
    submit.push(3848);
    ref.push(3848);

//len_list: 21
//==============================


//==============================
    submit.push(3999);
    ref.push(3999);

//len_list: 22
//==============================


//==============================
    submit.push(9968);
    ref.push(9968);

//len_list: 23
//==============================


//==============================
    submit.push(3707);
    ref.push(3707);

//len_list: 24
//==============================


//==============================
    submit.push(5455);
    ref.push(5455);

//len_list: 25
//==============================


//==============================
    submit.push(8764);
    ref.push(8764);

//len_list: 26
//==============================


//==============================
    submit.push(8951);
    ref.push(8951);

//len_list: 27
//==============================


//==============================
    submit.push(578);
    ref.push(578);

//len_list: 28
//==============================


//==============================
    submit.push(6483);
    ref.push(6483);

//len_list: 29
//==============================


//==============================
    submit.push(6871);
    ref.push(6871);

//len_list: 30
//==============================


//==============================
    submit.push(7060);
    ref.push(7060);

//len_list: 31
//==============================


//==============================
    submit.push(4333);
    ref.push(4333);

//len_list: 32
//==============================


//==============================
    submit.push(7659);
    ref.push(7659);

//len_list: 33
//==============================


//==============================
    submit.push(5219);
    ref.push(5219);

//len_list: 34
//==============================


//==============================
    submit.push(6071);
    ref.push(6071);

//len_list: 35
//==============================


//==============================
    submit.push(7064);
    ref.push(7064);

//len_list: 36
//==============================


//==============================
    submit.push(4226);
    ref.push(4226);

//len_list: 37
//==============================


//==============================
    submit.push(8290);
    ref.push(8290);

//len_list: 38
//==============================


//==============================
    submit.push(4858);
    ref.push(4858);

//len_list: 39
//==============================


//==============================
    submit.push(4073);
    ref.push(4073);

//len_list: 40
//==============================


//==============================
    submit.push(5794);
    ref.push(5794);

//len_list: 41
//==============================


//==============================
    submit.push(4997);
    ref.push(4997);

//len_list: 42
//==============================


//==============================
    submit.push(4449);
    ref.push(4449);

//len_list: 43
//==============================


//==============================
    submit.push(4800);
    ref.push(4800);

//len_list: 44
//==============================


//==============================
    submit.push(6959);
    ref.push(6959);

//len_list: 45
//==============================


//==============================
    submit.push(4175);
    ref.push(4175);

//len_list: 46
//==============================


//==============================
    submit.push(1343);
    ref.push(1343);

//len_list: 47
//==============================


//==============================
    submit.push(4041);
    ref.push(4041);

//len_list: 48
//==============================


//==============================
    submit.push(2748);
    ref.push(2748);

//len_list: 49
//==============================


//==============================
    submit.push(2066);
    ref.push(2066);

//len_list: 50
//==============================


//==============================
    submit.push(1459);
    ref.push(1459);

//len_list: 51
//==============================


//==============================
    submit.push(5481);
    ref.push(5481);

//len_list: 52
//==============================


//==============================
    submit.push(5);
    ref.push(5);

//len_list: 53
//==============================


//==============================
    submit.push(7715);
    ref.push(7715);

//len_list: 54
//==============================


//==============================
    submit.push(2576);
    ref.push(2576);

//len_list: 55
//==============================


//==============================
    submit.push(851);
    ref.push(851);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(947);
    ref.push(947);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(5627);
    ref.push(5627);

//len_list: 57
//==============================


//==============================
    submit.push(8949);
    ref.push(8949);

//len_list: 58
//==============================


//==============================
    submit.push(1707);
    ref.push(1707);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(6022);
    ref.push(6022);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(7555);
    ref.push(7555);

//len_list: 61
//==============================


//==============================
    submit.push(2349);
    ref.push(2349);

//len_list: 62
//==============================


//==============================
    submit.push(6551);
    ref.push(6551);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9744);
    ref.push(9744);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
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
    submit.push(836);
    ref.push(836);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 8
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
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(8940);
    ref.push(8940);

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(8605);
    ref.push(8605);

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
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(7871);
    ref.push(7871);

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
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(9741);
    ref.push(9741);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(3507);
    ref.push(3507);

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
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(4073);
    ref.push(4073);

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
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(3821);
    ref.push(3821);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(7671);
    ref.push(7671);

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
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(4307);
    ref.push(4307);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(2375);
    ref.push(2375);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(2971);
    ref.push(2971);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(7663);
    ref.push(7663);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(6079);
    ref.push(6079);

//len_list: 57
//==============================


//==============================
    submit.push(8467);
    ref.push(8467);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(8299);
    ref.push(8299);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(9221);
    ref.push(9221);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(5034);
    ref.push(5034);

//len_list: 56
//==============================


//==============================
    submit.push(7299);
    ref.push(7299);

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
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(4359);
    ref.push(4359);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(160);
    ref.push(160);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(4113);
    ref.push(4113);

//len_list: 56
//==============================


//==============================
    submit.push(4668);
    ref.push(4668);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(794);
    ref.push(794);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(1511);
    ref.push(1511);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(1958);
    ref.push(1958);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(5648);
    ref.push(5648);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(8329);
    ref.push(8329);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(5548);
    ref.push(5548);

//len_list: 58
//==============================


//==============================
    submit.push(5211);
    ref.push(5211);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(9728);
    ref.push(9728);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(4446);
    ref.push(4446);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(2771);
    ref.push(2771);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(6720);
    ref.push(6720);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9359);
    ref.push(9359);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(3425);
    ref.push(3425);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(9507);
    ref.push(9507);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(4678);
    ref.push(4678);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(249);
    ref.push(249);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
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
//num_require: 77
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
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(7877);
    ref.push(7877);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(7097);
    ref.push(7097);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(4000);
    ref.push(4000);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(865);
    ref.push(865);

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
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(5022);
    ref.push(5022);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(749);
    ref.push(749);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(4188);
    ref.push(4188);

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
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(1755);
    ref.push(1755);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(7098);
    ref.push(7098);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(7117);
    ref.push(7117);

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(8518);
    ref.push(8518);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(7010);
    ref.push(7010);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(7996);
    ref.push(7996);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(5510);
    ref.push(5510);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(9543);
    ref.push(9543);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(1890);
    ref.push(1890);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(3638);
    ref.push(3638);

//len_list: 64
//==============================


//==============================
    submit.push(1821);
    ref.push(1821);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(2512);
    ref.push(2512);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
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
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
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
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(4882);
    ref.push(4882);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(1163);
    ref.push(1163);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9788);
    ref.push(9788);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(602);
    ref.push(602);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
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
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(6940);
    ref.push(6940);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(8820);
    ref.push(8820);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(1594);
    ref.push(1594);

//len_list: 63
//==============================


//==============================
    submit.push(9671);
    ref.push(9671);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(2857);
    ref.push(2857);

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
    submit.push(8346);
    ref.push(8346);

//len_list: 63
//==============================


//==============================
    submit.push(9092);
    ref.push(9092);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
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
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(4338);
    ref.push(4338);

//len_list: 63
//==============================


//==============================
    submit.push(6656);
    ref.push(6656);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(1052);
    ref.push(1052);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(9675);
    ref.push(9675);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(1530);
    ref.push(1530);

//len_list: 65
//==============================


//==============================
    submit.push(647);
    ref.push(647);

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(1641);
    ref.push(1641);

//len_list: 64
//==============================


//==============================
    submit.push(4227);
    ref.push(4227);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
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
//num_require: 152
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
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(8325);
    ref.push(8325);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(7607);
    ref.push(7607);

//len_list: 61
//==============================


//==============================
    submit.push(8417);
    ref.push(8417);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(4394);
    ref.push(4394);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(8212);
    ref.push(8212);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(1546);
    ref.push(1546);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(367);
    ref.push(367);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(5409);
    ref.push(5409);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(4048);
    ref.push(4048);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(6244);
    ref.push(6244);

//len_list: 64
//==============================


//==============================
    submit.push(4382);
    ref.push(4382);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(8352);
    ref.push(8352);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(258);
    ref.push(258);

//len_list: 65
//==============================


//==============================
    submit.push(8830);
    ref.push(8830);

//len_list: 66
//==============================


//==============================
    submit.push(5802);
    ref.push(5802);

//len_list: 67
//==============================


//==============================
    submit.push(6070);
    ref.push(6070);

//len_list: 68
//==============================


//==============================
    submit.push(2198);
    ref.push(2198);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(4324);
    ref.push(4324);

//len_list: 65
//==============================


//==============================
    submit.push(1083);
    ref.push(1083);

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(2279);
    ref.push(2279);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(5464);
    ref.push(5464);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(1069);
    ref.push(1069);

//len_list: 64
//==============================


//==============================
    submit.push(8987);
    ref.push(8987);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(7089);
    ref.push(7089);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(7580);
    ref.push(7580);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(8589);
    ref.push(8589);

//len_list: 64
//==============================


//==============================
    submit.push(2525);
    ref.push(2525);

//len_list: 65
//==============================


//==============================
    submit.push(9546);
    ref.push(9546);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(6601);
    ref.push(6601);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(6326);
    ref.push(6326);

//len_list: 65
//==============================


//==============================
    submit.push(9167);
    ref.push(9167);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(7766);
    ref.push(7766);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.push(9610);
    ref.push(9610);

//len_list: 66
//==============================


//==============================
    submit.push(440);
    ref.push(440);

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    submit.push(5611);
    ref.push(5611);

//len_list: 67
//==============================


//==============================
    submit.push(9450);
    ref.push(9450);

//len_list: 68
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.push(506);
    ref.push(506);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


}
