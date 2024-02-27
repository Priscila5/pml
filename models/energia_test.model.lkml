connection: "pml_energia"


# include all the views
include: "/views/**/*.view.lkml"
include: "/Dashboards/**/*.dashboard.lookml"


datagroup: energia_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: energia_test_default_datagroup

explore: pml {}
