actor Main
    new create(env: Env) =>
        let text = env.in.input("Escriba un mensaje")
        env.out.print(text)