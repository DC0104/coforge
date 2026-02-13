{%-set qry%}
select * from {{source('src','regions')}}
{%-endset%}

{%- set result=run_query(qry)%}

{%- if execute%}
    {%- set list1=result.columns[1],values()%}
    the following are the values
    {%- for I in list1%}
        {{I}}
        {%-endfor%}
{%-else%}
    {%- set list1=[]%}
{%-endif%}