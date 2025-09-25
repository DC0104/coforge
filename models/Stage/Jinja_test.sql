{{ "Murali" }}

{%- set name="Dhruv"%}
{%- set roll=11021210069%}
i am {{name}} have roll no {{roll}}

{%- set tool=[1,2,3,4] %}
{%- for tools in tool %}
i do training on {{tools}}
{%- if tools==3 %}
"its 3"
{%- else %}
and
{% endif -%}
{% endfor -%}