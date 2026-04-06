# Chat Scroll Challenge

## UX Issues Identified and Fixed

During testing against the reference implementation, the following scroll UX issues were identified and fixed:

1. **Auto-scroll not consistent**  
   - Fixed the automatic scrolling when new messages arrive while streaming.

2. **Manual scroll pauses ignored**  
   - Implemented pause of auto-scroll when the user scrolls up manually.

3. **Sending messages while scrolled up**  
   - Ensured the current scroll position is maintained and auto-scroll resumes only when appropriate.

4. **Resume auto-scroll after scrolling back down**  
   - Fixed issue where auto-scroll didn’t resume after user scrolled back to the bottom.

5. **Streaming responses breaking scroll behavior**  
   - Adjusted ScrollController logic to handle streaming messages smoothly.

---

## Deployed URL

Live version of the app is available here:  
[https://mohamed-oraby10.github.io/chat-scroll-challenge-main/](https://mohamed-oraby10.github.io/chat-scroll-challenge-main/)

---

## Screen Recordings

All scenarios have been recorded and included in the `assets` folder:

1. **Scenario 1 (Basic Auto-Scroll)**  
   [Watch Recording](https://mohamed-oraby10.github.io/chat-scroll-challenge-main/assets/Scenario%201.mp4)

2. **Scenario 2 (Pause on Manual Scroll)**  
   [Watch Recording](https://mohamed-oraby10.github.io/chat-scroll-challenge-main/assets/Scenario%202.mp4)

3. **Scenario 3 (Send While Scrolled Up)**  
   [Watch Recording](https://mohamed-oraby10.github.io/chat-scroll-challenge-main/assets/Scenario%203.mp4)

4. **Scenario 4 (Resume Auto-Scroll After Scroll Down)**  
   [Watch Recording](https://mohamed-oraby10.github.io/chat-scroll-challenge-main/assets/Scenario%204.mp4)

