actor Main
    new create(env: Env) =>
        for value in env.args.values() do
            env.out.print(value)
        end