        /* File parser.mly */

        %token PLUS FLECHE
        %token PAROUV PARFERM
        %token IDENT INF AND
        %token EOF
        %left AND    
        %left INF
        %left PLUS
        %start inst            /* the entry point */
        %type <unit>inst
        %%




        inst:
            IDENT FLECHE expr  EOF {}
            | error { let pos = Parsing.symbol_start_pos() in
                      print_int pos.Lexing.pos_cnum }
        ;
        expr:
            expr PLUS expr      {}
          | expr INF expr       {} 
          | expr AND expr	    	{}
          | PAROUV expr PARFERM {}
          | IDENT               {}
        ;


