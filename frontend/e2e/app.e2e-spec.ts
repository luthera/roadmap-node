import {AppPage} from './app.po';

describe('roadmap-frontend App', () => {
  let page: AppPage;

  beforeEach(() => {
    page = new AppPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getJumboH1()).toEqual('This is going to be a cool web-app!');
  });
});
