# React patch fetch:

React переопределяет глобальный fetch.

refs:
https://github.com/facebook/react/issues/25573

# React patch DEV console.log:

Strict Mode рендерит компонент 2 раза, что приводило к повторному логированию. До версии 18 react глушил повторный вызов console.log что приводило к трудностям при откладке. В React 18 отменили заглушку второго вызова console.log и добавили в React Dev Tools рычаг, который подсвечивает/заглушивает повторый вызов console.log.

refs:
https://github.com/facebook/react/pull/18547
https://github.com/facebook/react/issues/21783
https://dev.to/sebastianstamm/be-careful-with-console-log-when-using-react-strictmode-ah9

