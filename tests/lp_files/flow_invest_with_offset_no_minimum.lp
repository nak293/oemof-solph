\* Source Pyomo model name=Model *\

min 
objective:
+500 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
+34 InvestmentFlowBlock_invest_status(electricityBus_source_nonconvex_invest)
+25 flow(electricityBus_source_nonconvex_invest_0)
+25 flow(electricityBus_source_nonconvex_invest_1)
+25 flow(electricityBus_source_nonconvex_invest_2)

s.t.

c_e_BusBlock_balance(electricityBus_0)_:
+1 flow(electricityBus_source_nonconvex_invest_0)
= 0

c_e_BusBlock_balance(electricityBus_1)_:
+1 flow(electricityBus_source_nonconvex_invest_1)
= 0

c_e_BusBlock_balance(electricityBus_2)_:
+1 flow(electricityBus_source_nonconvex_invest_2)
= 0

c_l_InvestmentFlowBlock_minimum_rule(electricityBus_source_nonconvex_invest)_:
+1 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
>= 0

c_u_InvestmentFlowBlock_maximum_rule(electricityBus_source_nonconvex_invest)_:
+1 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
-1234 InvestmentFlowBlock_invest_status(electricityBus_source_nonconvex_invest)
<= 0

c_u_InvestmentFlowBlock_max(electricityBus_source_nonconvex_invest_0)_:
-0.80000000000000004 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
+1 flow(electricityBus_source_nonconvex_invest_0)
<= 0

c_u_InvestmentFlowBlock_max(electricityBus_source_nonconvex_invest_1)_:
-0.80000000000000004 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
+1 flow(electricityBus_source_nonconvex_invest_1)
<= 0

c_u_InvestmentFlowBlock_max(electricityBus_source_nonconvex_invest_2)_:
-0.80000000000000004 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
+1 flow(electricityBus_source_nonconvex_invest_2)
<= 0

c_u_InvestmentFlowBlock_full_load_time_max(electricityBus_source_nonconvex_invest)_:
-2.2999999999999998 InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest)
+1 flow(electricityBus_source_nonconvex_invest_0)
+1 flow(electricityBus_source_nonconvex_invest_1)
+1 flow(electricityBus_source_nonconvex_invest_2)
<= 0

c_e_ONE_VAR_CONSTANT: 
ONE_VAR_CONSTANT = 1.0

bounds
   0 <= flow(electricityBus_source_nonconvex_invest_0) <= +inf
   0 <= flow(electricityBus_source_nonconvex_invest_1) <= +inf
   0 <= flow(electricityBus_source_nonconvex_invest_2) <= +inf
   0 <= InvestmentFlowBlock_invest(electricityBus_source_nonconvex_invest) <= 1234
   0 <= InvestmentFlowBlock_invest_status(electricityBus_source_nonconvex_invest) <= 1
binary
  InvestmentFlowBlock_invest_status(electricityBus_source_nonconvex_invest)
end
