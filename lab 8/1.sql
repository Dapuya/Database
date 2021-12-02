-- a
create function add1(ans int)
returns int
language plpgsql
as
    $$
    begin
        ans = ans + 1;
        return ans;
    end;
    $$;

select * from add1(2);

-- b
create function sum(f int, s int)
returns int
language plpgsql
as
    $$
    declare ans int;
    begin
        ans = f + s;
        return ans;
    end;
    $$;

select * from sum(332, 68);


-- c
create function div_by_2(variadic num numeric[])
returns bool
language plpgsql
as
    $$
    declare f bool;
    declare i int;
    begin
        f = false;
        select into i
        from generate_subscripts(num, 1)g(i)
        where mod(num[i], 2) = 0;
--         if
--              then f = true;
--         end if;
        return f;
    end;
    $$;

select * from div_by_2(3, 7, 9);
drop function div_by_2;

-- d
create function valid(password varchar)
returns bool
language plpgsql
as
$$
    declare ans bool;
        begin
        ans = true;
        if char_length(password) < 8 or char_length(password) > 16 or not password ~ '[A-Z]' then ans = false;
            end if;
        return ans;
    end;
    $$;

select *from valid('s1sTfdfssf');
drop function valid;

-- e
create function outputs(inp varchar, out first varchar, out second varchar)
as
    $$
        begin
        first = split_part(inp,' ', 1);
        second = split_part(inp,' ', 2);
    end
    $$
language plpgsql;


select * from outputs('Nursultanova Dariya');
drop function outputs;


drop function outputs;

