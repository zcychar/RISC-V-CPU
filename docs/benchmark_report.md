# Branch Predictor Benchmark Report

## Prediction Accuracy

| Workload | tournament | global | two_bit | always_false | always_true | tage |
| --- | --- | --- | --- | --- | --- | --- |
| 0to100 | 0.8984 | 0.8281 | 0.8984 | N/A | 0.8906 | N/A |
| array_test1 | 0.7711 | 0.7711 | 0.7711 | N/A | 0.9277 | N/A |
| array_test2 | 0.7500 | 0.7500 | 0.7386 | N/A | 0.9205 | N/A |
| basicopt1 | 0.7665 | 0.6989 | 0.8298 | N/A | 0.4307 | N/A |
| expr | 0.8516 | 0.5234 | 0.8516 | N/A | 0.5469 | N/A |
| gcd | 0.7037 | 0.6111 | 0.7099 | N/A | 0.3580 | N/A |
| hanoi | 0.9614 | 0.9644 | 0.7280 | N/A | 0.7345 | N/A |
| lvalue2 | 0.6667 | 0.6667 | 0.6667 | N/A | 0.3333 | N/A |
| magic | 0.7734 | 0.7464 | 0.7913 | N/A | 0.6555 | N/A |
| manyarguments | 0.8000 | 0.8000 | 0.8000 | N/A | 0.2000 | N/A |
| multiarray | 0.7869 | 0.6940 | 0.7869 | N/A | 0.8415 | N/A |
| qsort | 0.9311 | 0.9028 | 0.8347 | N/A | 0.7340 | N/A |
| queens | 0.7934 | 0.7811 | 0.7230 | N/A | 0.7231 | N/A |
| statement_test | 0.6234 | 0.5941 | 0.6360 | N/A | 0.3975 | N/A |
| statement_test_zmmul | 0.7244 | 0.6614 | 0.7244 | N/A | 0.3307 | N/A |
| superloop | 0.9333 | 0.8116 | 0.9395 | N/A | 0.2294 | N/A |
| tak | 0.7937 | 0.8046 | 0.7381 | N/A | 0.7500 | N/A |
| vec_multiply | 0.9026 | 0.8968 | 0.8989 | N/A | 0.9082 | N/A |
| vec_multiply_zmmul | 0.9032 | 0.7613 | 0.9032 | N/A | 0.8258 | N/A |
| vec_plus | 0.9646 | 0.9204 | 0.9646 | N/A | 0.9381 | N/A |

## Total Cycles

| Workload | tournament | global | two_bit | always_false | always_true | tage |
| --- | --- | --- | --- | --- | --- | --- |
| 0to100 | 4078 | 4148 | 4078 | N/A | 3984 | N/A |
| array_test1 | 3409 | 3399 | 3409 | N/A | 3313 | N/A |
| array_test2 | 3598 | 3592 | 3604 | N/A | 3468 | N/A |
| basicopt1 | 3654857 | 3707867 | 3551986 | N/A | 3937928 | N/A |
| expr | 8441 | 8700 | 8441 | N/A | 8699 | N/A |
| gcd | 1740 | 1865 | 1730 | N/A | 2094 | N/A |
| hanoi | 1251376 | 1250840 | 1281903 | N/A | 1279042 | N/A |
| lvalue2 | 203 | 203 | 203 | N/A | 216 | N/A |
| magic | 3583948 | 3597860 | 3574954 | N/A | 3653116 | N/A |
| manyarguments | 373 | 373 | 373 | N/A | 407 | N/A |
| multiarray | 18500 | 18622 | 18500 | N/A | 18426 | N/A |
| qsort | 10339025 | 10370967 | 10531482 | N/A | 10600961 | N/A |
| queens | 3752167 | 3753840 | 3785830 | N/A | 3773782 | N/A |
| statement_test | 5696 | 5772 | 5672 | N/A | 6010 | N/A |
| statement_test_zmmul | 4244 | 4318 | 4244 | N/A | 4562 | N/A |
| superloop | 5269929 | 5687374 | 5250421 | N/A | 7711176 | N/A |
| tak | 3914168 | 3908443 | 3943667 | N/A | 3941339 | N/A |
| vec_multiply | 226380 | 226352 | 226880 | N/A | 225774 | N/A |
| vec_multiply_zmmul | 15406 | 15541 | 15406 | N/A | 15489 | N/A |
| vec_plus | 44417 | 44515 | 44417 | N/A | 44482 | N/A |

## IPC (Instructions Per Cycle)

| Workload | tournament | global | two_bit | always_false | always_true | tage |
| --- | --- | --- | --- | --- | --- | --- |
| 0to100 | 0.2749 | 0.2703 | 0.2749 | N/A | 0.2814 | N/A |
| array_test1 | 0.2752 | 0.2760 | 0.2752 | N/A | 0.2831 | N/A |
| array_test2 | 0.2757 | 0.2762 | 0.2752 | N/A | 0.2860 | N/A |
| basicopt1 | 0.2805 | 0.2765 | 0.2886 | N/A | 0.2604 | N/A |
| expr | 0.2698 | 0.2617 | 0.2698 | N/A | 0.2618 | N/A |
| gcd | 0.3707 | 0.3458 | 0.3728 | N/A | 0.3080 | N/A |
| hanoi | 0.2753 | 0.2754 | 0.2687 | N/A | 0.2693 | N/A |
| lvalue2 | 0.3350 | 0.3350 | 0.3350 | N/A | 0.3148 | N/A |
| magic | 0.2721 | 0.2710 | 0.2728 | N/A | 0.2669 | N/A |
| manyarguments | 0.3780 | 0.3780 | 0.3780 | N/A | 0.3464 | N/A |
| multiarray | 0.2855 | 0.2836 | 0.2855 | N/A | 0.2866 | N/A |
| qsort | 0.2822 | 0.2814 | 0.2771 | N/A | 0.2753 | N/A |
| queens | 0.2700 | 0.2699 | 0.2676 | N/A | 0.2685 | N/A |
| statement_test | 0.3039 | 0.2999 | 0.3052 | N/A | 0.2880 | N/A |
| statement_test_zmmul | 0.2995 | 0.2943 | 0.2995 | N/A | 0.2786 | N/A |
| superloop | 0.3285 | 0.3044 | 0.3297 | N/A | 0.2245 | N/A |
| tak | 0.4144 | 0.4150 | 0.4113 | N/A | 0.4115 | N/A |
| vec_multiply | 0.2491 | 0.2491 | 0.2486 | N/A | 0.2498 | N/A |
| vec_multiply_zmmul | 0.2892 | 0.2867 | 0.2892 | N/A | 0.2876 | N/A |
| vec_plus | 0.2931 | 0.2925 | 0.2931 | N/A | 0.2927 | N/A |
