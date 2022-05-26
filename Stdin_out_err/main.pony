use "Term"

actor Main
    new create(env: Env) =>
        env.out.print("Digite su edad: ")

        let input = env.input(
            object iso is InputNotify
                fun ref apply(data: Array[U8] iso) =>
                    env.out.write(String.from_iso_array(consume data))                      

                fun ref dispose() =>
                    env.out.print("Done")
            end,
            16
        )
