view: pml {
  sql_table_name: precios_energia_mexico.pml ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave_entidad {
    type: number
    sql: ${TABLE}.clave_entidad ;;
  }
  dimension: clave_municipio {
    type: number
    sql: ${TABLE}.clave_municipio ;;
  }
  dimension: clave_nodo {
    type: string
    sql: ${TABLE}.clave_nodo ;;
  }
  dimension: componente_congestion {
    type: number
    sql: ${TABLE}.componente_congestion ;;
  }
  dimension: componente_energia {
    type: number
    sql: ${TABLE}.componente_energia ;;
  }
  dimension: componente_perdidas {
    type: number
    sql: ${TABLE}.componente_perdidas ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: henry_hub_index {
    type: number
    sql: ${TABLE}.henry_hub_index ;;
  }
  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }
  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }
  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }
  dimension: nombre_entidad {
    type: string
    sql: ${TABLE}.nombre_entidad ;;
  }
  dimension: nombre_municipio {
    type: string
    sql: ${TABLE}.nombre_municipio ;;
  }
  dimension: nombre_nodo {
    type: string
    sql: ${TABLE}.nombre_nodo ;;
  }
  dimension: pml {
    type: number
    sql: ${TABLE}.pml ;;
  }
  dimension: temperatura {
    type: number
    sql: ${TABLE}.temperatura ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
