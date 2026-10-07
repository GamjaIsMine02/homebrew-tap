# MINIPLE Homebrew tap

기존 Chrome YouTube Music 앱/PWA를 AppleScript로 조작하는 경량 MINIPLE v1의 개발용 Cask입니다. `0.4.1-dev.1`은 이전 독립형 앱을 대체합니다. 확장 설치나 MINIPLE 내부의 별도 Google 로그인은 필요하지 않습니다.

```sh
brew install --cask GamjaIsMine02/tap/miniple
open /Applications/MINIPLE.app
```

Apple Silicon과 macOS 13 Ventura 이상 대상입니다. Apple 공증이 없는 개발 빌드이므로 macOS가 실행을 차단할 수 있습니다. Homebrew는 Gatekeeper를 우회하거나 앱을 자동 실행하지 않습니다.

2026-10-07 공개 Cask로 `0.4.1-dev.1` 다운로드·업데이트 설치를 확인했습니다. 설치 앱의 서명·버전·arm64·구성 검사는 통과했지만 macOS 실행 평가는 `rejected`였습니다. 보안 설정을 변경하지 않았습니다.

처음 연결 전에는 앱 실행 시 연결 안내가 열립니다. 기존 Chrome YouTube Music을 열고 MINIPLE의 `시스템 권한 요청`을 승인하세요. Chrome 메뉴의 `보기 → 개발자 → Allow JavaScript from Apple Events`는 직접 켜야 합니다. MINIPLE의 `연결 확인`으로 연결을 확인합니다. 이 권한은 YouTube Music 전용이 아닌 Chrome 단위입니다. [상세 연결 안내](https://github.com/GamjaIsMine02/miniple-releases#처음-연결)

기본 설치 폴더는 `/Applications`입니다. Homebrew가 관리하지 않는 같은 이름의 앱은 덮어쓰지 마세요. 기존 앱을 보존하려면 같은 이름의 앱이 없는 다른 폴더를 선택하세요.

```sh
brew install --cask --appdir="$HOME/Applications" GamjaIsMine02/tap/miniple
```

기존 Homebrew 설치는 다음 명령으로 업데이트합니다. 이전 독립형 Google 로그인 프로필과 설정을 자동 삭제하지 않습니다.

```sh
brew update
brew upgrade --cask GamjaIsMine02/tap/miniple
```

다운로드·연결 방법·서명 제한은 [MINIPLE 배포 안내](https://github.com/GamjaIsMine02/miniple-releases)를 확인하세요. 설치 스크립트에서 Chrome 설정·macOS 권한·격리 속성을 변경하지 않습니다.
