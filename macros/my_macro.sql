{% macro joincols (col1, col2) %}
    ({{col1}} || '' || {{col2}})
{% endmacro %}

{% macro cent_to_dollar (col_name, scale=2)%}
    ({{col_name}}/100)::numeric (16,{{scale}})
{% endmacro %}

